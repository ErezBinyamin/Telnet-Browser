::Command Prompt - Telnet Web Browser::
  
  Description:
  
      Ever wanted to craft your own URI requests and manually browse the web
      without having an annoying web browser do all the work for you? If so than
      this telnet web-browser is for you! You wont even be able to see the
      characters of your initial request because the connection wont even exist!
      Clone this repo for the an authentic, rugged, browsing experience.
      
      Start the browser.bat file and connect to the world wide web in one of the
      most inefficient and awkward ways imaginable!
  
  Features:
  
      1. Can manage many simultaneous connections
      2. Allows users to custom build URI requests
      3. Logs all responses in temporary output.html files
      4. History of instance is appended to output file, NO overwriting
      5. Cleans up temporary files on exit
      
  How To:
  
      1. Open command prompt
      2. git clone <repo>
      3. cd <repo>
      4. Dependencies.bat
      6. Browser.bat
      7. "Type google.com"
      
          What site would you like to connect to?
          What site would you like to connect to? Google.com
          
          ^This will start a telnet connection to "Google.com" and open a chrome
          window to parse the html response that server gives you.
          
      8. In the new CMD window that pops up (the telnet connection) manually
      type the following text, DO ATTEMPT COPY AND PASTE.
      
          GET /index.html HTTP/1.1
          
          - You will not see the characters of the text that you are typing
          - You must drive blind
          
      9. Press "Enter" twice.
      
          - The first "Enter" (CR LF) signifies the end of a line
          - An empty line followed by an "Enter" (CR LF) signifies the end of
          a request packet.
          
      10. Lots of raw html will appear on your screen
      11. Switch to the chrome window that was previously opened and click refresh
      12. Now that you have initiated a connection you will now get a character
      response from the server.
      
          In English: You'll now be able to see the letters you're typing
          
      13. Now that you have a connection the server can resolve any URI request
      you give it. For Google some good ones are:
      
          GET /<FILE> HTTP/1.1
          -- "Enter" x2
          
          GET /search?q=<SEARCH> HTTP/1.1
          -- "Enter" x2
          
      14. The general URI packet format is:
      
          [METH] [REQUEST-URI] HTTP/[VER]
          [fieldname1]: [field-value1]
          [fieldname2]: [field-value2]
          --Press enter twice