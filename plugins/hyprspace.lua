hl.bind("SUPER + A", function()
	hl.plugin.overview.toggle()
end, { description = "Toggle Hyprspace overview" })

hl.config({
	plugin = {
		overview = {
			--Colors
			--
			-- panelColor = "#1e1e2e",
			panelBorderColor = "#cba6f7",
			workspaceActiveBackground = "rgba(49, 50, 68, 0.8)",
			-- workspaceInactiveBackground
			workspaceActiveBorder = "rgb(203, 166, 247)",
			-- workspaceInactiveBorder
			-- dragAlpha overrides the alpha of window when dragged in overview (0 - 1, 0 = transparent, 1 = opaque)
			-- dragAlpha
			disableBlur = false,

			--Layout
			--
			--panelHeight
			-- panelBorderWidth
			onBottom = false,
			workspaceMargin = 10,
			-- reservedArea padding on top of the panel, for Macbook camera notch
			workspaceBorderSize = 1,
			-- centerAligned whether if workspaces should be aligned at the center (KDE / macOS style) or at the left (Windows style)
			-- hideBackgroundLayers do not draw background and bottom layers in overview
			-- hideTopLayers do not draw top layers in overview
			-- hideOverlayLayers do not draw overlay layers in overview
			-- hideRealLayers whether to hide layers in actual workspace
			-- drawActiveWorkspace draw the active workspace in overview as-is
			-- overrideGaps = false, -- whether if overview should override the layout gaps in the current workspace using the following values
			-- gapsIn = 0,
			-- gapsOut = 0,
			affectStrut = false, -- whether the panel should push window aside, disabling this option also disables overrideGaps

			--Animation
			--
			-- The panel uses the windows curve for a slide-in animation
			-- overrideAnimSpeed to override the animation speed

			--Behaviors
			--
			autoDrag = true, -- mouse click always drags window when overview is open
			autoScroll = true, -- mouse scroll on active workspace area always switch workspace
			-- exitOnClick = true, -- mouse click without dragging exits overview
			-- switchOnDrop switch to the workspace when a window is droppped into it
			-- exitOnSwitch overview exits when overview is switched by clicking on workspace view or by switchOnDrop
			-- showNewWorkspace add a new empty workspace at the end of workspaces view
			-- showEmptyWorkspace show empty workspaces that are inbetween non-empty workspaces
			-- showSpecialWorkspace defaults to false
			-- disableGestures
			-- reverseSwipe reverses the direction of swipe gesture, for macOS peeps?
			-- exitKey key used to exit overview mode (default: Escape). Leave empty to disable keyboard exit.
			-- Touchpad gesture behavior follows Hyprland workspace swipe behavior
			--     gestures:workspace_swipe_fingers
			--     gestures:workspace_swipe_cancel_ratio
			--     gestures:workspace_swipe_min_speed_to_force
		},
	},
})
