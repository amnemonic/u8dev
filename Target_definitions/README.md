### Meaning of memory mapping sections in *.TRG files
#### Sections

|Section | Description                 |
| ---    | ---                         |
| `[MMAP]` | Code memory (Segment #0 ) |
| `[PMAP]` | Data memory (Segment #0 ) |
| `[GMAP]` | Memory in physical segment #1 or higher |

#### Regions
- `NUMBER=X` means that in this section will be defined X regions
- `STARTADRSX=yyyyH` address `yyyy` of first byte for region X (region numbering starts at `1`)
- `ENDADRSX=zzzzH` address `zzzz` of last byte for region X
- `ATTRIBUTEX=a,b` attributes available for region X, comma separated, can be changed in "_Operation settings..._" menu in DTU8
- `DEFAULTX=a` default attribute for region X, must be one for available in `ATTRIBUTEX=...`

#### Regions' attributes
| Abbreviation | Meaning                    |
| ---          |  ---                       |
| `SCT`        | System Code & Table        |
| `SC`         | System Code                |
| `SD`         | System Data                |
| `UCT`        | User Code & Table          |
| `UC`         | User Code                  |
| `UD`         | User Data                  |
| `MO`         | Mask Option                |
| `ROMWIN`     | ROM Window                 |
| `SFR`        | Special Function Registers |
| `N`          | N/A - Not used region      |
| `TEST`       | Test Data Area             |
