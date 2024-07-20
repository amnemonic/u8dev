'''
This script automatically fill "Security ID" window in MWU16
using just Windows Api functions. This script doesn't bypass
any security system. It just fill out the form as entering 
text manually is cumbersome process.

Usage: just run this script when window asking for Security ID appears.

'''

import ctypes
from ctypes import wintypes

# Load necessary Windows libraries
user32 = ctypes.windll.user32

# Define some constants and types
WM_SETTEXT = 0x000C

# Security ID
security_id = 'FFFF FFFF 7379 6771 5961 4753 4143 3137 2329 1719 1113 2307'.split(' ')


def find_window(class_name=None, window_name=None):
    """
    Find a window by its class name and/or window name.
    """
    FindWindow = user32.FindWindowW
    FindWindow.argtypes = [wintypes.LPCWSTR, wintypes.LPCWSTR]
    FindWindow.restype = wintypes.HWND

    hwnd = FindWindow(class_name, window_name)
    if hwnd == 0:
        raise ctypes.WinError(ctypes.get_last_error())
    return hwnd


def get_class_name(hwnd):
    """
    Get the class name of a window given its handle.
    """
    GetClassName = user32.GetClassNameW
    GetClassName.argtypes = [wintypes.HWND, wintypes.LPWSTR, ctypes.c_int]
    GetClassName.restype = ctypes.c_int
    
    class_name = ctypes.create_unicode_buffer(256)
    GetClassName(hwnd, class_name, 256)
    return class_name.value


def enum_child_windows(hwnd):
    """
    Enumerate all child windows of a given parent window.
    """
    EnumChildWindows = user32.EnumChildWindows
    EnumChildWindows.argtypes = [wintypes.HWND, ctypes.WINFUNCTYPE(ctypes.c_bool, wintypes.HWND, wintypes.LPARAM), wintypes.LPARAM]
    
    child_windows = {}
    EnumChildProc = ctypes.WINFUNCTYPE(ctypes.c_bool, wintypes.HWND, wintypes.LPARAM)
    
    def callback(child_hwnd, lParam):
        child_windows[child_hwnd]=get_class_name(child_hwnd)
        return True
    
    EnumChildWindows(hwnd, EnumChildProc(callback), 0)
    return child_windows


def set_window_text(hwnd, text):
    """
    Set the text of a window given its handle.
    """
    SendMessage = user32.SendMessageW
    SendMessage.argtypes = [wintypes.HWND, wintypes.UINT, wintypes.WPARAM, wintypes.LPVOID]
    SendMessage.restype = wintypes.LPARAM

    SendMessage(hwnd, WM_SETTEXT, 0, text)



if __name__=='__main__':
    hwnd = find_window(None, 'Security ID checking (Target No.1)')
    childrens = enum_child_windows(hwnd)
    edits = [i for i in childrens if childrens[i]=='Edit']

    for i in range(len(security_id)):
        set_window_text(edits[i],security_id[i])