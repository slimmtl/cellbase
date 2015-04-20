package org.opencb.cellbase.app.transform;

import org.junit.Test;
import org.opencb.cellbase.core.serializer.CellBaseFileSerializer;
import org.opencb.cellbase.core.serializer.CellBaseJsonFileSerializer;

import java.net.URL;
import java.nio.file.Path;
import java.nio.file.Paths;

public class VariationParserTest {

    @Test
    public void testParse() throws Exception {
        URL resource = VariantEffectParserTest.class.getResource("/variationParser");
        Path inputDir = Paths.get(resource.toURI());
        CellBaseFileSerializer serializer = new CellBaseJsonFileSerializer(inputDir);
        VariationParser variationParser = new VariationParser(inputDir, serializer);
        variationParser.parse();
        serializer.close();
    }
}