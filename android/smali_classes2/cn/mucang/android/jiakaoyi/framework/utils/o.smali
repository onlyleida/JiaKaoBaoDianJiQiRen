.class public Lcn/mucang/android/jiakaoyi/framework/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field public static final b:D

.field public static final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x4086800000000000L    # 720.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4080e00000000000L    # 540.0

    :goto_0
    sput-wide v0, Lcn/mucang/android/jiakaoyi/framework/utils/o;->a:D

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    goto :goto_1

    :cond_1
    const-wide v2, 0x4041800000000000L    # 35.0

    :goto_1
    sput-wide v2, Lcn/mucang/android/jiakaoyi/framework/utils/o;->b:D

    div-double/2addr v0, v2

    .line 3
    sput-wide v0, Lcn/mucang/android/jiakaoyi/framework/utils/o;->c:D

    return-void
.end method
