package cn.mucang.android.core.glide;

import android.content.Context;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.LibraryGlideModule;
import com.bumptech.glide.request.RequestOptions;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@GlideModule
public class MucangAppGlideModule extends AppGlideModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<LibraryGlideModule> f2518a = new ArrayList();

    private boolean a(float f2, float f3, float f4) {
        return f2 >= f3 && f2 <= f4;
    }

    @Override // com.bumptech.glide.module.AppGlideModule, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(Context context, GlideBuilder glideBuilder) {
        if (!context.getResources().getBoolean(R.bool.glideAllowHardwareConfig)) {
            glideBuilder.setDefaultRequestOptions(new RequestOptions().disallowHardwareConfig());
        }
        float fraction = context.getResources().getFraction(R.fraction.glideMemoryCacheScreens, 1, 1);
        float fraction2 = context.getResources().getFraction(R.fraction.glideLowMemoryMaxSizeMultiplier, 1, 1);
        float fraction3 = context.getResources().getFraction(R.fraction.glideMaxSizeMultiplier, 1, 1);
        float fraction4 = context.getResources().getFraction(R.fraction.glideBitmapPoolScreens, 1, 1);
        int integer = context.getResources().getInteger(R.integer.glideArrayPoolSize);
        if (integer > 0 || fraction4 > BitmapDescriptorFactory.HUE_RED || fraction2 > BitmapDescriptorFactory.HUE_RED || fraction3 > BitmapDescriptorFactory.HUE_RED || fraction > BitmapDescriptorFactory.HUE_RED) {
            MemorySizeCalculator.Builder builder = new MemorySizeCalculator.Builder(context);
            if (integer > 0) {
                builder.setArrayPoolSize(integer);
            }
            if (a(fraction4, 0.1f, 5.0f)) {
                builder.setBitmapPoolScreens(fraction4);
            }
            if (a(fraction2, 0.01f, 0.6f)) {
                builder.setLowMemoryMaxSizeMultiplier(fraction2);
            }
            if (a(fraction3, 0.01f, 0.8f)) {
                builder.setMaxSizeMultiplier(fraction3);
            }
            if (a(fraction, 0.1f, 4.0f)) {
                builder.setMemoryCacheScreens(fraction);
            }
            MemorySizeCalculator memorySizeCalculatorBuild = builder.build();
            glideBuilder.setMemoryCache(new LruResourceCache(memorySizeCalculatorBuild.getMemoryCacheSize()));
            glideBuilder.setArrayPool(new LruArrayPool(memorySizeCalculatorBuild.getArrayPoolSizeInBytes()));
            glideBuilder.setBitmapPool(new LruBitmapPool(memorySizeCalculatorBuild.getBitmapPoolSize()));
        }
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public boolean isManifestParsingEnabled() {
        return false;
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(Context context, Glide glide, Registry registry) {
        registry.replace(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory(c.d()));
        List<LibraryGlideModule> list = f2518a;
        if (g.d(list)) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                f2518a.get(i).registerComponents(context, glide, registry);
            }
        }
    }
}
