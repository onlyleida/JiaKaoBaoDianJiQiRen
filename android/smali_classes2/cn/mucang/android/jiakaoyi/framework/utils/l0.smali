.class public final Lcn/mucang/android/jiakaoyi/framework/utils/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/utils/SchoolDeviceUtil;",
        "",
        "()V",
        "isSchoolDevice",
        "",
        "Ljava/lang/Boolean;",
        "setSchoolDevice",
        "",
        "framework_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "isSchoolDevice"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b:Ljava/lang/Boolean;

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b:Ljava/lang/Boolean;

    const-string v0, "isSchoolDevice"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method
