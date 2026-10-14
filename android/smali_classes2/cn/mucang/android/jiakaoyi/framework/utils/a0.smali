.class public Lcn/mucang/android/jiakaoyi/framework/utils/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/utils/a0$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->a:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/utils/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;-><init>()V

    return-void
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/framework/utils/a0;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/a0$b;->a()Lcn/mucang/android/jiakaoyi/framework/utils/a0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->a:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "enable_gear_learn"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "enable_gear_learn"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->a:Ljava/lang/Boolean;

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
