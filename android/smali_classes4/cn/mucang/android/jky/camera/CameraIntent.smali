.class public final enum Lcn/mucang/android/jky/camera/CameraIntent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jky/camera/CameraIntent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jky/camera/CameraIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003J\u0006\u0010\u000f\u001a\u00020\u0003J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R2\u0010\u0006\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u0003 \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u0003\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nj\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jky/camera/CameraIntent;",
        "",
        "desc",
        "",
        "key",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "cache",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "kotlin.jvm.PlatformType",
        "getDesc",
        "()Ljava/lang/String;",
        "getKey",
        "bindSerial",
        "",
        "serial",
        "getBindSerial",
        "getDevice",
        "",
        "isSerialNoBind",
        "",
        "PUSH",
        "FACE",
        "Companion",
        "usbcamera_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jky/camera/CameraIntent;

.field public static final Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

.field public static final enum FACE:Lcn/mucang/android/jky/camera/CameraIntent;

.field public static final enum PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

.field private static final cacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/camera/CameraIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final desc:Ljava/lang/String;

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jky/camera/CameraIntent;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/jky/camera/CameraIntent;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jky/camera/CameraIntent;

    const-string v1, "PUSH"

    const/4 v2, 0x0

    const-string v3, "\u89c6\u9891\u63a8\u6d41"

    const-string v4, "push__camera_serial"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jky/camera/CameraIntent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    .line 2
    new-instance v0, Lcn/mucang/android/jky/camera/CameraIntent;

    const-string v1, "FACE"

    const/4 v2, 0x1

    const-string v3, "\u4eba\u8138\u8bc6\u522b"

    const-string v4, "face__camera_serial"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jky/camera/CameraIntent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-static {}, Lcn/mucang/android/jky/camera/CameraIntent;->$values()[Lcn/mucang/android/jky/camera/CameraIntent;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->$VALUES:[Lcn/mucang/android/jky/camera/CameraIntent;

    new-instance v0, Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    .line 3
    invoke-static {}, Lcn/mucang/android/jky/camera/CameraIntent;->values()[Lcn/mucang/android/jky/camera/CameraIntent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->cacheList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jky/camera/CameraIntent;->desc:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jky/camera/CameraIntent;->key:Ljava/lang/String;

    const-string p1, "NULL"

    .line 3
    invoke-static {p4, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/camera/CameraIntent;->cache:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-void
.end method

.method public static final synthetic access$getCacheList$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->cacheList:Ljava/util/List;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jky/camera/CameraIntent;
    .locals 1

    const-class v0, Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jky/camera/CameraIntent;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jky/camera/CameraIntent;
    .locals 1

    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->$VALUES:[Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jky/camera/CameraIntent;

    return-object v0
.end method


# virtual methods
.method public final bindSerial(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/CameraIntent;->cache:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBindSerial()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/CameraIntent;->cache:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/CameraIntent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/CameraIntent;->key:Ljava/lang/String;

    const-string v1, "push__camera_serial"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "push__camera_index_new"

    goto :goto_0

    :cond_0
    const-string v1, "face__camera_serial"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "face__camera_index_new"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    const-string v1, "ofInt(oldKey, -1 as Int)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "typeCache.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/CameraIntent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final isSerialNoBind()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/CameraIntent;->cache:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "NULL"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
