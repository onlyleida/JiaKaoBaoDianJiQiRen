package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    private static h c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g0 f430a;

    class a implements g0.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f431a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        private final int[] b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
        private final int[] c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f432d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f433e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int[] f434f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

        a() {
        }

        private boolean f(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i) {
            int iC = l0.c(context, R.attr.colorControlHighlight);
            return new ColorStateList(new int[][]{l0.b, l0.f467d, l0.c, l0.f469f}, new int[]{l0.b(context, R.attr.colorButtonNormal), androidx.core.graphics.c.b(iC, i), androidx.core.graphics.c.b(iC, i), i});
        }

        private ColorStateList i(Context context) {
            return h(context, l0.c(context, R.attr.colorAccent));
        }

        private ColorStateList j(Context context) {
            return h(context, l0.c(context, R.attr.colorButtonNormal));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            int i = R.attr.colorSwitchThumbNormal;
            ColorStateList colorStateListE = l0.e(context, i);
            if (colorStateListE == null || !colorStateListE.isStateful()) {
                iArr[0] = l0.b;
                iArr2[0] = l0.b(context, i);
                iArr[1] = l0.f468e;
                iArr2[1] = l0.c(context, R.attr.colorControlActivated);
                iArr[2] = l0.f469f;
                iArr2[2] = l0.c(context, i);
            } else {
                iArr[0] = l0.b;
                iArr2[0] = colorStateListE.getColorForState(iArr[0], 0);
                iArr[1] = l0.f468e;
                iArr2[1] = l0.c(context, R.attr.colorControlActivated);
                iArr[2] = l0.f469f;
                iArr2[2] = colorStateListE.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(g0 g0Var, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable drawableJ = g0Var.j(context, R.drawable.abc_star_black_48dp);
            Drawable drawableJ2 = g0Var.j(context, R.drawable.abc_star_half_black_48dp);
            if ((drawableJ instanceof BitmapDrawable) && drawableJ.getIntrinsicWidth() == dimensionPixelSize && drawableJ.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableJ;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableJ.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableJ2 instanceof BitmapDrawable) && drawableJ2.getIntrinsicWidth() == dimensionPixelSize && drawableJ2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableJ2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableJ2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.secondaryProgress);
            layerDrawable.setId(2, android.R.id.progress);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (z.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = h.b;
            }
            drawable.setColorFilter(h.e(i, mode));
        }

        @Override // androidx.appcompat.widget.g0.f
        public Drawable a(g0 g0Var, Context context, int i) {
            if (i == R.drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{g0Var.j(context, R.drawable.abc_cab_background_internal_bg), g0Var.j(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == R.drawable.abc_ratingbar_material) {
                return l(g0Var, context, R.dimen.abc_star_big);
            }
            if (i == R.drawable.abc_ratingbar_indicator_material) {
                return l(g0Var, context, R.dimen.abc_star_medium);
            }
            if (i == R.drawable.abc_ratingbar_small_material) {
                return l(g0Var, context, R.dimen.abc_star_small);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.g0.f
        public ColorStateList b(Context context, int i) {
            if (i == R.drawable.abc_edit_text_material) {
                return androidx.appcompat.a.a.a.c(context, R.color.abc_tint_edittext);
            }
            if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                return androidx.appcompat.a.a.a.c(context, R.color.abc_tint_switch_track);
            }
            if (i == R.drawable.abc_switch_thumb_material) {
                return k(context);
            }
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return j(context);
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return g(context);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return i(context);
            }
            if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                return androidx.appcompat.a.a.a.c(context, R.color.abc_tint_spinner);
            }
            if (f(this.b, i)) {
                return l0.e(context, R.attr.colorControlNormal);
            }
            if (f(this.f433e, i)) {
                return androidx.appcompat.a.a.a.c(context, R.color.abc_tint_default);
            }
            if (f(this.f434f, i)) {
                return androidx.appcompat.a.a.a.c(context, R.color.abc_tint_btn_checkable);
            }
            if (i == R.drawable.abc_seekbar_thumb_material) {
                return androidx.appcompat.a.a.a.c(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0046  */
        /* JADX WARN: Code duplicated, block: B:23:0x004c  */
        /* JADX WARN: Code duplicated, block: B:26:0x005d  */
        /* JADX WARN: Code duplicated, block: B:28:0x0061 A[RETURN] */
        @Override // androidx.appcompat.widget.g0.f
        public boolean c(Context context, int i, Drawable drawable) {
            int iRound;
            boolean z;
            PorterDuff.Mode mode = h.b;
            boolean zF = f(this.f431a, i);
            int i2 = android.R.attr.colorBackground;
            if (zF) {
                i2 = R.attr.colorControlNormal;
            } else if (f(this.c, i)) {
                i2 = R.attr.colorControlActivated;
            } else {
                if (!f(this.f432d, i)) {
                    if (i == R.drawable.abc_list_divider_mtrl_alpha) {
                        i2 = android.R.attr.colorForeground;
                        iRound = Math.round(40.8f);
                        z = true;
                    } else if (i != R.drawable.abc_dialog_material_background) {
                        iRound = -1;
                        z = false;
                        i2 = 0;
                    }
                    if (z) {
                        return false;
                    }
                    if (z.a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    drawable.setColorFilter(h.e(l0.c(context, i2), mode));
                    if (iRound != -1) {
                        drawable.setAlpha(iRound);
                    }
                    return true;
                }
                mode = PorterDuff.Mode.MULTIPLY;
            }
            iRound = -1;
            z = true;
            if (z) {
                return false;
            }
            if (z.a(drawable)) {
                drawable = drawable.mutate();
            }
            drawable.setColorFilter(h.e(l0.c(context, i2), mode));
            if (iRound != -1) {
                drawable.setAlpha(iRound);
            }
            return true;
        }

        @Override // androidx.appcompat.widget.g0.f
        public PorterDuff.Mode d(int i) {
            if (i == R.drawable.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.widget.g0.f
        public boolean e(Context context, int i, Drawable drawable) {
            if (i == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int i2 = R.attr.colorControlNormal;
                m(drawableFindDrawableByLayerId, l0.c(context, i2), h.b);
                m(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), l0.c(context, i2), h.b);
                m(layerDrawable.findDrawableByLayerId(android.R.id.progress), l0.c(context, R.attr.colorControlActivated), h.b);
                return true;
            }
            if (i != R.drawable.abc_ratingbar_material && i != R.drawable.abc_ratingbar_indicator_material && i != R.drawable.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(android.R.id.background), l0.b(context, R.attr.colorControlNormal), h.b);
            Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress);
            int i3 = R.attr.colorControlActivated;
            m(drawableFindDrawableByLayerId2, l0.c(context, i3), h.b);
            m(layerDrawable2.findDrawableByLayerId(android.R.id.progress), l0.c(context, i3), h.b);
            return true;
        }
    }

    public static synchronized h b() {
        if (c == null) {
            h();
        }
        return c;
    }

    public static synchronized PorterDuffColorFilter e(int i, PorterDuff.Mode mode) {
        return g0.l(i, mode);
    }

    public static synchronized void h() {
        if (c == null) {
            h hVar = new h();
            c = hVar;
            hVar.f430a = g0.h();
            c.f430a.u(new a());
        }
    }

    static void i(Drawable drawable, o0 o0Var, int[] iArr) {
        g0.w(drawable, o0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i) {
        return this.f430a.j(context, i);
    }

    synchronized Drawable d(Context context, int i, boolean z) {
        return this.f430a.k(context, i, z);
    }

    synchronized ColorStateList f(Context context, int i) {
        return this.f430a.m(context, i);
    }

    public synchronized void g(Context context) {
        this.f430a.s(context);
    }
}
