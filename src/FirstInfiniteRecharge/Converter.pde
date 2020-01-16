// NOTE: All function names here are deliberately shortened in order to increase code readability
// cw - convertWidth
// ch - convertHeight
// cx - convertX
// cy - convertY
// gx - getBox2DX (can also be used for width)
// gy - getBox2DY (can also be used for height)

// converts Box2D width to pixel width
public float cw(float w) {
    return field.width * w / FIELD_WIDTH;
}

// converts Box2D height to pixel height
public float ch(float h) {
    return field.height * h / FIELD_HEIGHT;
}

// converts Box2D x to pixel x
public float cx(float x) {
    if(topPadding) {
        return width * x / FIELD_WIDTH;
    }
    else {
        float paddingWidth = (width - field.width) / 2;
        return (width - paddingWidth * 2) * x / FIELD_WIDTH + paddingWidth;
    }
}

// converts Box2D y to pixel y
public float cy(float y) {
    if(topPadding) {
        float paddingHeight = (height - field.height) / 2;
        return (height - paddingHeight * 2) * y / FIELD_HEIGHT + paddingHeight;
    }
    else {
        return height * y / FIELD_HEIGHT;
    }
}

// converts ratio to Box2D x/width
public float gx(float ratio) {
    return ratio * FIELD_WIDTH;
}

// converts ratio to Box2D y/height
public float gy(float ratio) {
    return ratio * FIELD_HEIGHT;
}

// public float getXRatio(float x) {
//     if(topPadding) {
//         return x / width;
//     }
//     else {
//         float paddingWidth = (width - field.width) / 2;
//         return (x - paddingWidth) / (width - paddingWidth * 2);
//     }
// }

// public float getYRatio(float y) {
//     if(topPadding) {
//         float paddingHeight = (height - field.height) / 2;
//         return (y - paddingHeight) / (height - paddingHeight * 2);
//     }
//     else {
//         return y / height;
//     }
// }

// public float getWRatio(float w) {
//     if(topPadding) {
//         return w / width;
//     }
//     else {
//         float paddingWidth = (width - field.width) / 2;
//         return w / (width - paddingWidth * 2);
//     }
// }

// public float getHRatio(float h) {
//     if(topPadding) {
//         float paddingHeight = (height - field.height) / 2;
//         return h / (height - paddingHeight * 2);
//     }
//     else {
//         return h / height;
//     }
// }

// int pressMouseX = 0, pressMouseY = 0;

// void mousePressed() {
//     println("Press X: ", getXRatio(mouseX), "Press Y: ", getYRatio(mouseY));
//     float d = dist(mouseX, mouseY, pressMouseX, pressMouseY);
//     println("Width: ", getWRatio(d), "Height: ", getHRatio(d));
//     println("Angle: ", degrees(atan2(pressMouseY - mouseY, mouseX - pressMouseX)) - 90);

//     pressMouseX = mouseX;
//     pressMouseY = mouseY;
// }
