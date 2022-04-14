<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- 
xsl.xsl
Ethan Davey | C3374491
22/10/2021
-->

<xsl:output method="html" />
<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="style.css" />
            <title>JIMS CARS</title>
        </head>
        <body>
            <header> <!-- Navigation bar-->
                <a href="index.html">Home</a>
                <a href="4x4s.xml">4x4s</a> <!-- Links to XML documents -->
                <a href="sedans.xml">Sedans</a>
                <a href="dataCollection.html">Sell Your Car</a>
                <a href="termsAndConditions.html">Terms and Conditions</a>
                <a href="about.html">About Us</a>
                <a href="contact.html">Contact Us</a>
            </header> <!-- Closes navigation bar -->

            <div id="xsl">
                <xsl:for-each select="category/car">
                    <xsl:sort select="model" data-type="text" order="ascending"/>
                    <hr />
                    Make: <xsl:value-of select="make"/><br />
                    Model: <xsl:value-of select="model"/><br />
                    Engine: <xsl:value-of select="engine"/><br />
                    Seats: <xsl:value-of select="seats"/><br />
                    Towing Capacity: <xsl:value-of select="towingCapacity"/><br />
                    Safety Rating: <xsl:value-of select="safetyRating"/><br />
                    Extras: <br />
                    <xsl:for-each select="extras/extra">
                        Option: <xsl:value-of select="option"/><br />
                        Aditional Cost: <xsl:value-of select="additionalCost"/><br />
                    </xsl:for-each>
                    Description: <xsl:value-of select="description"/><br />
                    Reviews: <br />
                    <xsl:for-each select="reviews/review">
                        Customer Name: <xsl:value-of select="customerName"/><br />
                        Rating: <xsl:value-of select="reviewRating"/><br />
                        Comment: <xsl:value-of select="comment"/><br />
                    </xsl:for-each>
                    Price: <xsl:value-of select="cost"/><br />
                    <br />
                </xsl:for-each>
                <hr />
            </div>

            <footer> <!-- Footer of the webpage -->
            <address> <!-- Address tag contains the contact information of the author (Me: Ethan Davey) -->
                <em>&#xA9; Ethan Davey 2021 | c3374491@uon.edu.au</em> <!-- &#xA9; is how to display the copyright symbol in XLS -->
            </address> 
        </footer>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
