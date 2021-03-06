/**
 * NOTE: All function names here are deliberately shortened in order to increase code readability
 * cw - convertWidth
 * ch - convertHeight
 * cx - convertX
 * cy - convertY
 * gx - getBox2DX (can also be used for width)
 * gy - getBox2DY (can also be used for height)
 */

/**
 * Converts Box2D width to pixel width
 */
public float cw(float w) {
    return field.width * w / FIELD_WIDTH;
}

/**
 * Converts Box2D height to pixel height
 */
public float ch(float h) {
    return field.height * h / FIELD_HEIGHT;
}

/**
 * Converts Box2D x to pixel x
 */
public float cx(float x) {
    if(topPadding) {
        return width * x / FIELD_WIDTH;
    }
    else {
        float paddingWidth = (width - field.width) / 2;
        return (width - paddingWidth * 2) * x / FIELD_WIDTH + paddingWidth;
    }
}

/**
 * Converts Box2D y to pixel y
 */
public float cy(float y) {
    if(topPadding) {
        float paddingHeight = (height - field.height) / 2;
        return (height - paddingHeight * 2) * y / FIELD_HEIGHT + paddingHeight;
    }
    else {
        return height * y / FIELD_HEIGHT;
    }
}

/**
 * Converts ratio to Box2D x/width
 */
public float gx(float ratio) {
    return ratio * FIELD_WIDTH;
}

/**
 * Converts ratio to Box2D y/height
 */
public float gy(float ratio) {
    return ratio * FIELD_HEIGHT;
}

/**
 * Converts pixel x to ratio
 */
public float getXRatio(float x) {
    if(topPadding) {
        return x / width;
    }
    else {
        float paddingWidth = (width - field.width) / 2;
        return (x - paddingWidth) / (width - paddingWidth * 2);
    }
}

/**
 * Converts pixel y to ratio
 */
public float getYRatio(float y) {
    if(topPadding) {
        float paddingHeight = (height - field.height) / 2;
        return (y - paddingHeight) / (height - paddingHeight * 2);
    }
    else {
        return y / height;
    }
}

/**
 * Converts pixel dist to width ratio
 */
public float getWRatio(float dist) {
    return dist / field.width;
}

/**
 * Converts pixel dist to height ratio
 */
public float getHRatio(float dist) {
    return dist / field.height;
}

int pressMouseX = 0, pressMouseY = 0; // location of the last mouse press

/**
 * Print debugging info when the mouse is pressed
 * Used to locate coordinates/measure distances and easily place objects
 */
void mousePressed() {
    if(DEBUG_CLICK) {
        println("Press X: ", getXRatio(mouseX), "Press Y: ", getYRatio(height - mouseY));
        float d = dist(mouseX, mouseY, pressMouseX, pressMouseY);
        println("Width: ", getWRatio(d), "Height: ", getHRatio(d));
        println("Angle: ", degrees(atan2(pressMouseY - mouseY, mouseX - pressMouseX)));
        println();

        pressMouseX = mouseX;
        pressMouseY = mouseY;
    }
}
