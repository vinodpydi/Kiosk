   M S B A M L   `   `   `  ����O  KHotKeyManagement.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullkIclr-namespace:BondTech.HotKeyManagement.WPF;assembly=HotKeyManagement.WPFBondTech.HotKeyManagement.WPF  5   �   Q MHotKeyManagement.WPF.4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullsNclr-namespace:BondTech.HotKeyManagement.WPF._4;assembly=HotKeyManagement.WPF.4 BondTech.HotKeyManagement.WPF._4 6�    GlobalShortcutCS.WPF%   GlobalShortcutCS.WPF.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   XmyIclr-namespace:BondTech.HotKeyManagement.WPF;assembly=HotKeyManagement.WPF     5   �   ^my1Nclr-namespace:BondTech.HotKeyManagement.WPF._4;assembly=HotKeyManagement.WPF.4     6�     � Title$3  -A Media Player implementing Global shortcuts.��6	   $	��350��6?   $	��525��6L    � WindowStartupLocation$ CenterScreen=�6X   ���	#FF341B1B.��5      � -   5         � 	Resources 5   
   ��%    5      .+�5   
   r� -   5         r�Name$ myMediaPlayer��5       r� UnloadedBehavior$ Manual=�6.   $��	0,0,0,111q�6H    r� ScrubbingEnabled . 6[   �� 5	   
   -   5        $��btnPlay��5	   a   $��Play / Pause��6   $��23��6(   $
��Left=�64   $��14,0,0,9q�6O   $��Bottom=�6p   $��75��6�    � ToolTip 5
      �� 5      .+�5      �� �� 6!   $��Segoe Script)�6%   $��14(�6?   .�6M   Play or Pause Media.6c   �� 5      �� 5      .�6   0.Plays the currently loaded media or pauses it.6N   �� 5      �� 5      .�6   Local HotKey: Space63   �� 68   �� 5      .�6   $"Global HotKey: Control + Shift + P6B   �� 6G   �� 5      .�6   (&Chord HotKey: Control + P, Control + M6F   5      5      5      �� 5   
   -   5        $��button2��5   Y   $
��Stop��6   $��23��6    $
��Left=�6,   $��95,0,0,9q�6G   $��Bottom=�6h   $��75��6�    5      �� 5      .+�5      �� �� 6!   $��Segoe Script)�6%   $��14(�6?   .�6M   Stop Media.6Z   �� 5      �� 5      .�6   +)Stops playing the currently loaded media.6I   �� 5      �� 5      .�6   Local HotKey: Key.S63   �� 68   �� 5      .�6    Global HotKey: Shift + Alt + S6>   �� 6C   �� 5       .�6   (&Chord HotKey: Control + S, Control + M6F   5!      5"      5$      �� 5%   
   -   5        $��button3��5%   _   $��	Find File��6   $��23��6%   $
��Left=�61   $��	176,0,0,9q�6L   $��Bottom=�6n   $��75��6�    5&      �� 5'      .+�5(      �� �� 6!   $��Segoe Script)�6%   $��14(�6?   .�6M   Find Media.6Z   �� 5)      �� 5*      .�6   ;9Opens a file dialog that allows you select a file to play6Y   �� 5+      �� 5,      .�6   Local HotKey: Enter63   �� 68   �� 5-      .�6   $"Global HotKey: Control + Shift + F6B   �� 6G   �� 5.      .�6   (&Chord HotKey: Control + F, Control + M6F   5/      50      52      �� 53   
   -   5        $��TimeLine��53   �   $��
12,0,12,78q�6      HorizontalSlider#��[  6%   $��14��6R   $��Bottom=�6^   $ Media Timeline��6y   
���  �� �� IsMoveToPointEnabled .  �� TickPlacement$
 None=�6�  	 J� SnapsToDevicePixels	 .  
 �� IsSnapToTickEnabled
 .   �� IsSelectionRangeEnabled .  ��.   �� AutoToolTipPlacement$
 None=�6?  ��6O  Z� ��6v  Z�  J� OpacityMask 6�  Z� 6]  �� 54   
   -   5        $��volumeControl��54   L   $��18��6   $��Right=�6   $��	0,0,12,12q�69   $��Bottom=�6a   $��75��6|    �� Orientation$ 
Horizontal=�6�   #��[  6�    � Value$	 0.5Q�6�   $ Volume Control��6�    � SmallChange$
 0.01Q�6�    � Maximum$ 1Q�6   � LargeChange$	 0.1Q�6  6#  1   +BondTech.HotKeyManagement.WPF.HotKeyControl  55   
   -   5        $��hotKeyControl1��55   V   $��33��6   $��Right=�6'   $��	0,0,12,36q�6C   $��Bottom=�6l   $	��178��6�   $ HotKeyControl in .Net 3.0��6�      ForceModifiers 6�   ��  �� ElementName$ chkforcemodifier�� �� Path$ 	IsChecked�6�   �� 56   
   -	   5         ��Name$ chkforcemodifier��56      $��Force Modifiers��6-   $��16��6G   $��Right=�6S   $��0,0,90,0q�6o   $��Bottom=�6�   $	��100��6�    d� 	IsChecked$
 TrueY�6�   4  .BondTech.HotKeyManagement.WPF._4.HotKeyControl  57   
   -
   5        $��hotKeyControl2��57   V   $��33��6   $
��Left=�6(   $��	14,0,0,36q�6C   $��Bottom=�6l   $	��156��6�   $ HotKeyControl in .Net 4.0��6�      ForceModifiers 6�   �� $ chkforcemodifier��$ 	IsChecked�59      5:      