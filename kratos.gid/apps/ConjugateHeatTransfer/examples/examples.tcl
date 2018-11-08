namespace eval ConjugateHeatTransfer::examples {

}

proc ConjugateHeatTransfer::examples::Init { } {
    uplevel #0 [list source [file join $::ConjugateHeatTransfer::dir examples HeatedSquare.tcl]]
    #uplevel #0 [list source [file join $::FSI::dir examples HorizontalFlexibleBar.tcl]]
}

proc ConjugateHeatTransfer::examples::UpdateMenus { } {
    GiDMenu::InsertOption "Kratos" [list "---"] 8 PRE "" "" "" insertafter =
    GiDMenu::InsertOption "Kratos" [list "Cylinder in air flow" ] 8 PRE [list ::ConjugateHeatTransfer::examples::HeatedSquare] "" "" insertafter =
    #GiDMenu::InsertOption "Kratos" [list "Horizontal flexible bar" ] 8 PRE [list ::FSI::examples::HorizontalFlexibleBar] "" "" insertafter =
    GiDMenu::UpdateMenus
}

ConjugateHeatTransfer::examples::Init