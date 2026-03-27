% =========================================
% Troubleshooting Assistant
% =========================================

start :-
    nl,
    write('======================================'), nl,
    write(' Troubleshooting Assistant'), nl,
    write('======================================'), nl,
    write('Select a category:'), nl,
    write('1. Laptop Issues'), nl,
    write('2. Internet Issues'), nl,
    write('3. Mobile Phone Issues'), nl,
    write('4. Exit'), nl,
    write('Enter your choice: '), nl,
    read(UserChoice),
    handle_main_menu(UserChoice).

% main menu handling
handle_main_menu(1) :- laptop_menu, start.
handle_main_menu(2) :- internet_menu, start.
handle_main_menu(3) :- phone_menu, start.
handle_main_menu(4) :- write('Exiting... thanks for using this!'), nl.
handle_main_menu(_) :-
    write('Hmm... that is not a valid option. Try again.'), nl,
    start.

% =========================================
% LAPTOP SECTION
% =========================================

laptop_menu :-
    nl,
    write('--- Laptop Troubleshooting ---'), nl,
    write('Pick the issue you are facing:'), nl,
    write('1. Slow Performance'), nl,
    write('2. Overheating'), nl,
    write('3. Battery Draining'), nl,
    write('4. Screen Flickering'), nl,
    write('5. Not Turning On'), nl,
    write('6. Keyboard Not Working'), nl,
    write('7. WiFi Not Connecting'), nl,
    write('8. Audio Issues'), nl,
    write('9. Software Crash'), nl,
    write('10. USB Not Detecting'), nl,
    read(C),
    handle_laptop_problem(C).

% basic performance issue
handle_laptop_problem(1) :-
    write('Checking why your laptop feels slow...'), nl,
    write('Possible reasons:'), nl,
    write('- Too many apps running'), nl,
    write('- Storage almost full'), nl,
    write('You can try:'), nl,
    write('- Close unnecessary apps'), nl,
    write('- Free up some storage space'), nl,
    write('- Restart the system (works surprisingly often)'), nl.

% overheating
handle_laptop_problem(2) :-
    write('Looks like heating might be the issue.'), nl,
    write('Common causes:'), nl,
    write('- Dust inside vents'), nl,
    write('- Cooling fan not working properly'), nl,
    write('Try these:'), nl,
    write('- Clean the vents carefully'), nl,
    write('- Use a cooling pad if possible'), nl,
    write('- Avoid placing laptop on bed/sofa'), nl.

% battery
handle_laptop_problem(3) :-
    write('Battery draining quickly?'), nl,
    write('Could be due to:'), nl,
    write('- Background apps'), nl,
    write('- Old battery'), nl,
    write('Things you can try:'), nl,
    write('- Reduce brightness'), nl,
    write('- Turn off unused apps'), nl,
    write('- If very old, maybe replace battery'), nl.

% screen
handle_laptop_problem(4) :-
    write('Screen issue detected...'), nl,
    write('Possible reasons:'), nl,
    write('- Driver problems'), nl,
    write('- Loose display connection'), nl,
    write('Try this first:'), nl,
    write('- Restart laptop'), nl,
    write('- Update display drivers'), nl.

% not turning on
handle_laptop_problem(5) :-
    write('Laptop not turning on is serious.'), nl,
    write('Check the basics:'), nl,
    write('- Is charger connected?'), nl,
    write('- Is battery fully drained?'), nl,
    write('Try:'), nl,
    write('- Plug charger properly'), nl,
    write('- Try a different charger if available'), nl,
    write('- If still no response, service center might be needed'), nl.

% keyboard
handle_laptop_problem(6) :-
    write('Keyboard not responding properly.'), nl,
    write('Possible reasons:'), nl,
    write('- Dust or debris'), nl,
    write('- Driver glitch'), nl,
    write('Solutions:'), nl,
    write('- Clean keyboard gently'), nl,
    write('- Restart system'), nl,
    write('- Update drivers'), nl.

% wifi
handle_laptop_problem(7) :-
    write('WiFi issue detected.'), nl,
    write('Try the following:'), nl,
    write('- Turn WiFi off and on'), nl,
    write('- Restart router'), nl,
    write('- Forget and reconnect network'), nl.

% audio
handle_laptop_problem(8) :-
    write('No sound or audio issue.'), nl,
    write('Check:'), nl,
    write('- Volume settings'), nl,
    write('- Audio drivers'), nl,
    write('Fix:'), nl,
    write('- Increase volume'), nl,
    write('- Restart system'), nl,
    write('- Update drivers'), nl.

% software crash
handle_laptop_problem(9) :-
    write('Software crashing frequently.'), nl,
    write('Could be:'), nl,
    write('- Buggy update'), nl,
    write('- Corrupt installation'), nl,
    write('Try:'), nl,
    write('- Update software'), nl,
    write('- Reinstall application'), nl,
    write('- Restart system'), nl.

% USB
handle_laptop_problem(10) :-
    write('USB not working.'), nl,
    write('Try these fixes:'), nl,
    write('- Use another port'), nl,
    write('- Restart laptop'), nl,
    write('- Update USB drivers'), nl.

handle_laptop_problem(_) :-
    write('Invalid choice in laptop section.'), nl.

% =========================================
% INTERNET SECTION
% =========================================

internet_menu :-
    nl,
    write('--- Internet Troubleshooting ---'), nl,
    write('Choose the issue:'), nl,
    write('1. Slow Internet'), nl,
    write('2. No Connection'), nl,
    write('3. Frequent Disconnect'), nl,
    write('4. Weak Signal'), nl,
    write('5. Router Not Working'), nl,
    write('6. DNS Issues'), nl,
    write('7. High Ping'), nl,
    write('8. Limited Access'), nl,
    write('9. Connected but No Internet'), nl,
    write('10. Network Drops'), nl,
    read(C),
    handle_internet_problem(C).

handle_internet_problem(1) :-
    write('Slow internet is annoying...'), nl,
    write('Try:'), nl,
    write('- Restart router'), nl,
    write('- Reduce connected devices'), nl.

handle_internet_problem(2) :-
    write('No internet connection.'), nl,
    write('Check:'), nl,
    write('- Cables'), nl,
    write('- Router status'), nl,
    write('- Contact ISP if needed'), nl.

handle_internet_problem(3) :-
    write('Frequent disconnection happening.'), nl,
    write('- Restart router'), nl,
    write('- Check signal strength'), nl.

handle_internet_problem(4) :-
    write('Weak signal detected.'), nl,
    write('- Move closer to router'), nl,
    write('- Avoid obstacles'), nl.

handle_internet_problem(5) :-
    write('Router issue.'), nl,
    write('- Restart router'), nl,
    write('- Check power supply'), nl.

handle_internet_problem(6) :-
    write('DNS problem.'), nl,
    write('- Reset DNS'), nl,
    write('- Use Google DNS (8.8.8.8)'), nl.

handle_internet_problem(7) :-
    write('High ping problem.'), nl,
    write('- Close background apps'), nl,
    write('- Try wired connection'), nl.

handle_internet_problem(8) :-
    write('Limited access issue.'), nl,
    write('- Reconnect network'), nl,
    write('- Restart device'), nl.

handle_internet_problem(9) :-
    write('Connected but no internet.'), nl,
    write('- Restart router'), nl,
    write('- Check ISP status'), nl.

handle_internet_problem(10) :-
    write('Network keeps dropping.'), nl,
    write('- Reduce load'), nl,
    write('- Upgrade plan if needed'), nl.

handle_internet_problem(_) :-
    write('Invalid internet option.'), nl.

% =========================================
% PHONE SECTION
% =========================================

phone_menu :-
    nl,
    write('--- Mobile Troubleshooting ---'), nl,
    write('Select issue:'), nl,
    write('1. Phone Slow'), nl,
    write('2. Battery Drain'), nl,
    write('3. Overheating'), nl,
    write('4. App Crash'), nl,
    write('5. Network Issue'), nl,
    write('6. Touch Issue'), nl,
    write('7. Storage Full'), nl,
    write('8. Camera Issue'), nl,
    write('9. Charging Issue'), nl,
    write('10. Sound Issue'), nl,
    read(C),
    handle_phone_problem(C).

handle_phone_problem(1) :-
    write('Phone running slow.'), nl,
    write('- Clear cache'), nl,
    write('- Restart phone'), nl.

handle_phone_problem(2) :-
    write('Battery draining fast.'), nl,
    write('- Reduce brightness'), nl,
    write('- Enable battery saver'), nl.

handle_phone_problem(3) :-
    write('Phone heating up.'), nl,
    write('- Avoid heavy apps'), nl,
    write('- Let it cool down'), nl.

handle_phone_problem(4) :-
    write('App crashing.'), nl,
    write('- Update app'), nl,
    write('- Reinstall app'), nl.

handle_phone_problem(5) :-
    write('Network issue.'), nl,
    write('- Restart phone'), nl,
    write('- Reset network settings'), nl.

handle_phone_problem(6) :-
    write('Touch not working properly.'), nl,
    write('- Clean screen'), nl,
    write('- Restart device'), nl.

handle_phone_problem(7) :-
    write('Storage full.'), nl,
    write('- Delete unused files'), nl,
    write('- Clear cache'), nl.

handle_phone_problem(8) :-
    write('Camera issue.'), nl,
    write('- Clean lens'), nl,
    write('- Restart camera app'), nl.

handle_phone_problem(9) :-
    write('Charging problem.'), nl,
    write('- Check charger'), nl,
    write('- Try another cable'), nl.

handle_phone_problem(10) :-
    write('Sound issue.'), nl,
    write('- Check volume'), nl,
    write('- Restart phone'), nl.

handle_phone_problem(_) :-
    write('Invalid phone option.'), nl.