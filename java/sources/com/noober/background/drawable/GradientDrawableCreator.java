package com.noober.background.drawable;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.noober.background.R;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public class GradientDrawableCreator implements ICreateDrawable {
    private TypedArray typedArray;

    GradientDrawableCreator(TypedArray typedArray) {
        this.typedArray = typedArray;
    }

    private boolean hasSetRadius(float[] fArr) {
        for (float f2 : fArr) {
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                return true;
            }
        }
        return false;
    }

    @Override // com.noober.background.drawable.ICreateDrawable
    public GradientDrawable create() throws XmlPullParserException {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        GradientDrawable gradientDrawable = new GradientDrawable();
        float[] fArr = new float[8];
        Rect rect = new Rect();
        int i3 = 0;
        int i4 = 0;
        float dimension = BitmapDescriptorFactory.HUE_RED;
        float dimension2 = BitmapDescriptorFactory.HUE_RED;
        int color = 0;
        float dimension3 = -1.0f;
        float dimension4 = BitmapDescriptorFactory.HUE_RED;
        int color2 = 0;
        float dimension5 = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        int color3 = 0;
        int color4 = 0;
        int color5 = 0;
        int i5 = 0;
        int integer = 0;
        while (i4 < this.typedArray.getIndexCount()) {
            int index = this.typedArray.getIndex(i4);
            if (index == R.styleable.background_bl_shape) {
                gradientDrawable.setShape(this.typedArray.getInt(index, i3));
                i = color2;
            } else {
                if (index == R.styleable.background_bl_solid_color) {
                    color = this.typedArray.getColor(index, i3);
                } else {
                    if (index == R.styleable.background_bl_corners_radius) {
                        gradientDrawable.setCornerRadius(this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                        i = color2;
                    } else if (index == R.styleable.background_bl_corners_bottomLeftRadius) {
                        i = color2;
                        fArr[6] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                        fArr[7] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        i = color2;
                        if (index == R.styleable.background_bl_corners_bottomRightRadius) {
                            fArr[4] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                            fArr[5] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                        } else if (index == R.styleable.background_bl_corners_topLeftRadius) {
                            fArr[0] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                            fArr[1] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                        } else if (index == R.styleable.background_bl_corners_topRightRadius) {
                            fArr[2] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                            fArr[3] = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                        } else {
                            if (index == R.styleable.background_bl_gradient_angle) {
                                integer = this.typedArray.getInteger(index, 0);
                            } else if (index == R.styleable.background_bl_gradient_centerX) {
                                f2 = this.typedArray.getFloat(index, -1.0f);
                            } else if (index == R.styleable.background_bl_gradient_centerY) {
                                f3 = this.typedArray.getFloat(index, -1.0f);
                            } else if (index == R.styleable.background_bl_gradient_centerColor) {
                                color3 = this.typedArray.getColor(index, 0);
                            } else if (index == R.styleable.background_bl_gradient_endColor) {
                                color5 = this.typedArray.getColor(index, 0);
                            } else if (index == R.styleable.background_bl_gradient_startColor) {
                                color4 = this.typedArray.getColor(index, 0);
                            } else if (index == R.styleable.background_bl_gradient_gradientRadius) {
                                gradientDrawable.setGradientRadius(this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                            } else {
                                if (index == R.styleable.background_bl_gradient_type) {
                                    int i6 = this.typedArray.getInt(index, 0);
                                    gradientDrawable.setGradientType(i6);
                                    i5 = i6;
                                } else if (index == R.styleable.background_bl_gradient_useLevel) {
                                    gradientDrawable.setUseLevel(this.typedArray.getBoolean(index, false));
                                } else if (index == R.styleable.background_bl_padding_left) {
                                    rect.left = (int) this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_padding_top) {
                                    rect.top = (int) this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_padding_right) {
                                    rect.right = (int) this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_padding_bottom) {
                                    rect.bottom = (int) this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_size_width) {
                                    dimension = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_size_height) {
                                    dimension2 = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_stroke_width) {
                                    dimension3 = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_stroke_color) {
                                    color2 = this.typedArray.getColor(index, 0);
                                } else if (index == R.styleable.background_bl_stroke_dashWidth) {
                                    dimension4 = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                } else if (index == R.styleable.background_bl_stroke_dashGap) {
                                    dimension5 = this.typedArray.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                                }
                                i4++;
                                i3 = 0;
                            }
                            color2 = i;
                        }
                    }
                    color2 = i;
                    i4++;
                    i3 = 0;
                }
                i4++;
                i3 = 0;
            }
            color2 = i;
            i4++;
            i3 = 0;
        }
        int i7 = color2;
        if (hasSetRadius(fArr)) {
            gradientDrawable.setCornerRadii(fArr);
        }
        if (this.typedArray.hasValue(R.styleable.background_bl_size_width) && this.typedArray.hasValue(R.styleable.background_bl_size_height)) {
            gradientDrawable.setSize((int) dimension, (int) dimension2);
        }
        if (i2 >= 21) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            TypedArray typedArray = this.typedArray;
            int i8 = R.styleable.background_bl_pressed_solid_color;
            if (typedArray.hasValue(i8)) {
                arrayList.add(Integer.valueOf(android.R.attr.state_pressed));
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i8, 0)));
            }
            TypedArray typedArray2 = this.typedArray;
            int i9 = R.styleable.background_bl_unPressed_solid_color;
            if (typedArray2.hasValue(i9)) {
                arrayList.add(-16842919);
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i9, 0)));
            }
            TypedArray typedArray3 = this.typedArray;
            int i10 = R.styleable.background_bl_checkable_solid_color;
            if (typedArray3.hasValue(i10)) {
                arrayList.add(Integer.valueOf(android.R.attr.state_checkable));
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i10, 0)));
            }
            TypedArray typedArray4 = this.typedArray;
            int i11 = R.styleable.background_bl_unCheckable_solid_color;
            if (typedArray4.hasValue(i11)) {
                arrayList.add(-16842911);
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i11, 0)));
            }
            TypedArray typedArray5 = this.typedArray;
            int i12 = R.styleable.background_bl_checked_solid_color;
            if (typedArray5.hasValue(i12)) {
                arrayList.add(Integer.valueOf(android.R.attr.state_checked));
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i12, 0)));
            }
            TypedArray typedArray6 = this.typedArray;
            int i13 = R.styleable.background_bl_unChecked_solid_color;
            if (typedArray6.hasValue(i13)) {
                arrayList.add(-16842912);
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i13, 0)));
            }
            TypedArray typedArray7 = this.typedArray;
            int i14 = R.styleable.background_bl_enabled_solid_color;
            if (typedArray7.hasValue(i14)) {
                arrayList.add(Integer.valueOf(android.R.attr.state_enabled));
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i14, 0)));
            }
            TypedArray typedArray8 = this.typedArray;
            int i15 = R.styleable.background_bl_unEnabled_solid_color;
            if (typedArray8.hasValue(i15)) {
                arrayList.add(-16842910);
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i15, 0)));
            }
            TypedArray typedArray9 = this.typedArray;
            int i16 = R.styleable.background_bl_selected_solid_color;
            if (typedArray9.hasValue(i16)) {
                arrayList.add(Integer.valueOf(android.R.attr.state_selected));
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i16, 0)));
            }
            TypedArray typedArray10 = this.typedArray;
            int i17 = R.styleable.background_bl_unSelected_solid_color;
            if (typedArray10.hasValue(i17)) {
                arrayList.add(-16842913);
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i17, 0)));
            }
            TypedArray typedArray11 = this.typedArray;
            int i18 = R.styleable.background_bl_focused_solid_color;
            if (typedArray11.hasValue(i18)) {
                arrayList.add(Integer.valueOf(android.R.attr.state_focused));
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i18, 0)));
            }
            TypedArray typedArray12 = this.typedArray;
            int i19 = R.styleable.background_bl_unFocused_solid_color;
            if (typedArray12.hasValue(i19)) {
                arrayList.add(-16842908);
                arrayList2.add(Integer.valueOf(this.typedArray.getColor(i19, 0)));
            }
            if (arrayList.size() > 0) {
                int size = arrayList.size();
                if (this.typedArray.hasValue(R.styleable.background_bl_solid_color)) {
                    size++;
                }
                int[][] iArr = new int[size][];
                int[] iArr2 = new int[size];
                Iterator it = arrayList.iterator();
                int i20 = 0;
                while (it.hasNext()) {
                    iArr[i20] = new int[]{((Integer) it.next()).intValue()};
                    iArr2[i20] = ((Integer) arrayList2.get(i20)).intValue();
                    i20++;
                }
                if (this.typedArray.hasValue(R.styleable.background_bl_solid_color)) {
                    iArr[i20] = new int[0];
                    iArr2[i20] = color;
                }
                gradientDrawable.setColor(new ColorStateList(iArr, iArr2));
            } else if (this.typedArray.hasValue(R.styleable.background_bl_solid_color)) {
                gradientDrawable.setColor(color);
            }
        } else if (this.typedArray.hasValue(R.styleable.background_bl_solid_color)) {
            gradientDrawable.setColor(color);
        }
        if (this.typedArray.hasValue(R.styleable.background_bl_stroke_width)) {
            if (i2 >= 21) {
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                TypedArray typedArray13 = this.typedArray;
                int i21 = R.styleable.background_bl_pressed_stroke_color;
                if (typedArray13.hasValue(i21)) {
                    TypedArray typedArray14 = this.typedArray;
                    int i22 = R.styleable.background_bl_unPressed_stroke_color;
                    if (typedArray14.hasValue(i22)) {
                        arrayList3.add(Integer.valueOf(android.R.attr.state_pressed));
                        arrayList3.add(-16842919);
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i21, 0)));
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i22, 0)));
                    }
                }
                TypedArray typedArray15 = this.typedArray;
                int i23 = R.styleable.background_bl_checkable_stroke_color;
                if (typedArray15.hasValue(i23)) {
                    TypedArray typedArray16 = this.typedArray;
                    int i24 = R.styleable.background_bl_unCheckable_stroke_color;
                    if (typedArray16.hasValue(i24)) {
                        arrayList3.add(Integer.valueOf(android.R.attr.state_checkable));
                        arrayList3.add(-16842911);
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i23, 0)));
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i24, 0)));
                    }
                }
                TypedArray typedArray17 = this.typedArray;
                int i25 = R.styleable.background_bl_checked_stroke_color;
                if (typedArray17.hasValue(i25)) {
                    TypedArray typedArray18 = this.typedArray;
                    int i26 = R.styleable.background_bl_unChecked_stroke_color;
                    if (typedArray18.hasValue(i26)) {
                        arrayList3.add(Integer.valueOf(android.R.attr.state_checked));
                        arrayList3.add(-16842912);
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i25, 0)));
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i26, 0)));
                    }
                }
                TypedArray typedArray19 = this.typedArray;
                int i27 = R.styleable.background_bl_enabled_stroke_color;
                if (typedArray19.hasValue(i27)) {
                    TypedArray typedArray20 = this.typedArray;
                    int i28 = R.styleable.background_bl_unEnabled_stroke_color;
                    if (typedArray20.hasValue(i28)) {
                        arrayList3.add(Integer.valueOf(android.R.attr.state_enabled));
                        arrayList3.add(-16842910);
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i27, 0)));
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i28, 0)));
                    }
                }
                TypedArray typedArray21 = this.typedArray;
                int i29 = R.styleable.background_bl_selected_stroke_color;
                if (typedArray21.hasValue(i29)) {
                    TypedArray typedArray22 = this.typedArray;
                    int i30 = R.styleable.background_bl_unSelected_stroke_color;
                    if (typedArray22.hasValue(i30)) {
                        arrayList3.add(Integer.valueOf(android.R.attr.state_selected));
                        arrayList3.add(-16842913);
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i29, 0)));
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i30, 0)));
                    }
                }
                TypedArray typedArray23 = this.typedArray;
                int i31 = R.styleable.background_bl_focused_stroke_color;
                if (typedArray23.hasValue(i31)) {
                    TypedArray typedArray24 = this.typedArray;
                    int i32 = R.styleable.background_bl_unFocused_stroke_color;
                    if (typedArray24.hasValue(i32)) {
                        arrayList3.add(Integer.valueOf(android.R.attr.state_focused));
                        arrayList3.add(-16842908);
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i31, 0)));
                        arrayList4.add(Integer.valueOf(this.typedArray.getColor(i32, 0)));
                    }
                }
                if (arrayList3.size() > 0) {
                    int[][] iArr3 = new int[arrayList3.size()][];
                    int[] iArr4 = new int[arrayList3.size()];
                    Iterator it2 = arrayList3.iterator();
                    int i33 = 0;
                    while (it2.hasNext()) {
                        iArr3[i33] = new int[]{((Integer) it2.next()).intValue()};
                        iArr4[i33] = ((Integer) arrayList4.get(i33)).intValue();
                        i33++;
                    }
                    gradientDrawable.setStroke((int) dimension3, new ColorStateList(iArr3, iArr4), dimension4, dimension5);
                } else if (this.typedArray.hasValue(R.styleable.background_bl_stroke_color)) {
                    gradientDrawable.setStroke((int) dimension3, i7, dimension4, dimension5);
                }
            } else if (this.typedArray.hasValue(R.styleable.background_bl_stroke_color)) {
                gradientDrawable.setStroke((int) dimension3, i7, dimension4, dimension5);
            }
        }
        if (this.typedArray.hasValue(R.styleable.background_bl_gradient_centerX) && this.typedArray.hasValue(R.styleable.background_bl_gradient_centerY)) {
            gradientDrawable.setGradientCenter(f2, f3);
        }
        if (this.typedArray.hasValue(R.styleable.background_bl_gradient_startColor) && this.typedArray.hasValue(R.styleable.background_bl_gradient_endColor) && i2 >= 16) {
            gradientDrawable.setColors(this.typedArray.hasValue(R.styleable.background_bl_gradient_centerColor) ? new int[]{color4, color3, color5} : new int[]{color4, color5});
        }
        if (i5 == 0 && this.typedArray.hasValue(R.styleable.background_bl_gradient_angle) && i2 >= 16) {
            int i34 = integer % 360;
            if (i34 % 45 != 0) {
                throw new XmlPullParserException(this.typedArray.getPositionDescription() + "<gradient> tag requires 'angle' attribute to be a multiple of 45");
            }
            GradientDrawable.Orientation orientation = GradientDrawable.Orientation.LEFT_RIGHT;
            if (i34 != 0) {
                if (i34 == 45) {
                    orientation = GradientDrawable.Orientation.BL_TR;
                } else if (i34 == 90) {
                    orientation = GradientDrawable.Orientation.BOTTOM_TOP;
                } else if (i34 == 135) {
                    orientation = GradientDrawable.Orientation.BR_TL;
                } else if (i34 == 180) {
                    orientation = GradientDrawable.Orientation.RIGHT_LEFT;
                } else if (i34 == 225) {
                    orientation = GradientDrawable.Orientation.TR_BL;
                } else if (i34 == 270) {
                    orientation = GradientDrawable.Orientation.TOP_BOTTOM;
                } else if (i34 == 315) {
                    orientation = GradientDrawable.Orientation.TL_BR;
                }
            }
            gradientDrawable.setOrientation(orientation);
        }
        if (this.typedArray.hasValue(R.styleable.background_bl_padding_left) && this.typedArray.hasValue(R.styleable.background_bl_padding_top) && this.typedArray.hasValue(R.styleable.background_bl_padding_right) && this.typedArray.hasValue(R.styleable.background_bl_padding_bottom)) {
            if (i2 >= 29) {
                gradientDrawable.setPadding(rect.left, rect.top, rect.right, rect.bottom);
            } else {
                try {
                    Field declaredField = gradientDrawable.getClass().getDeclaredField("mPadding");
                    declaredField.setAccessible(true);
                    declaredField.set(gradientDrawable, rect);
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                } catch (NoSuchFieldException e3) {
                    e3.printStackTrace();
                }
            }
        }
        return gradientDrawable;
    }
}
