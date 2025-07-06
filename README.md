# steinsgrub-theme
Theme for Grub2 in the style of Steins Gate

![SteinsGrub Preview](resources/main_preview.png)

# Install 

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/RansomDark/steinsgrub-theme/

    cd steinsgrub-theme
    ```

2.  **Run the installation script with sudo**:

    ```bash
    sudo ./install_theme.sh
    ```
    
3.  **Configure GRUB**:
    Edit your GRUB configuration file (usually `/etc/default/grub`) using a text editor:
    ```bash
    sudo nano /etc/default/grub
    ```
    Locate the `GRUB_THEME=` line. If it exists, modify it. If not, add the line. Set it as follows:
    ```ini
    GRUB_THEME="/boot/grub/themes/steinsgrub-theme/steinsgrubtheme.txt"
    ```

4.  **Update GRUB Configuration, e.g.:**
    ```bash
    sudo grub-mkconfig -o /boot/grub/grub.cfg
