Uninstall programms from CMD
1. Open a cmd(administrator).

2. Input WMIC and press Return. You will see a prompt that looks like this: wmic:root\cli>

3. At the new prompt, execute the following command: product get name OR product get name, version (recommended)
This will generate a list of installed applications on your station.
4. At the prompt, execute the following command: product where name="" call uninstall OR product where name=”nomedoproduto” call uninstall /nointeractive (recommended)

Example:
product where name=”Adobe Reader XI (11.0.10)” call uninstall /nointeractive

where application name is the name of the program you wish to uninstall (use the exact name provided by the previously generated list).
For example, if I were wanting to uninstall Adobe Reader 9, my command would look like this: product where name="Adobe Reader 9" call uninstall

5. When prompted, input Y to confirm that you wish to uninstall the application and press Return.
The application will be uninstalled.
