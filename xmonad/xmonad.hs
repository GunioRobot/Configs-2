import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmonad $ defaultConfig
        { manageHook  = manageDocks <+> manageHook defaultConfig
        , layoutHook  = avoidStruts  $  layoutHook defaultConfig
        , modMask     = mod4Mask
        , borderWidth        = 2
        , normalBorderColor  = "#cccccc"
        , focusedBorderColor = "#c0c0e0"
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "gnome-screensaver-command -l")
        , ((mod4Mask .|. shiftMask, xK_x), spawn "swkbmap")
        ]
