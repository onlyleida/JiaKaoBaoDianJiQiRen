.class public final Lcn/mucang/android/jiakaoyi/signal/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R2\u0010\t\u001a&\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006 \u000b*\u0012\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\n0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\u000c\u001a&\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006 \u000b*\u0012\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\n0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/utils/LightDelayHelper;",
        "",
        "()V",
        "DoubleFlashCacheKey",
        "",
        "DoubleFlashCacheTime",
        "",
        "LeftRightCacheKey",
        "LeftRightCacheTime",
        "doubleFlashCache",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "kotlin.jvm.PlatformType",
        "leftRightCache",
        "getDoubleFlashCacheTime",
        "getLeftRightCacheTime",
        "setDoubleFlashCacheTime",
        "",
        "doubleFlashCacheTime",
        "setLeftRightCacheTime",
        "leftRightCacheTime",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/utils/g;

.field private static b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/g;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/g;

    const-string v0, "LeftRightCacheTime"

    const/16 v1, 0x3b6

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "DoubleFlashCacheTime"

    const/16 v1, 0x3e8

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "doubleFlashCache.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leftRightCache.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method
