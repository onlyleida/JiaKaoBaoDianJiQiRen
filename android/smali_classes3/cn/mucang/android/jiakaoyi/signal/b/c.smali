.class public Lcn/mucang/android/jiakaoyi/signal/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/b/c$a;
    }
.end annotation


# static fields
.field private static a:Lcn/mucang/android/jiakaoyi/signal/b/c$a;

.field private static final b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "daochedeng_state"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/a;->a:Lcn/mucang/android/jiakaoyi/signal/b/a;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->a:Lcn/mucang/android/jiakaoyi/signal/b/c$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/b/c$a;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lcn/mucang/android/jiakaoyi/signal/b/c;->a:Lcn/mucang/android/jiakaoyi/signal/b/c$a;

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->a:Lcn/mucang/android/jiakaoyi/signal/b/c$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/b/c$a;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-interface {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/b/c$a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/framework/utils/r0;)V

    return-void
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/b/c;->a:Lcn/mucang/android/jiakaoyi/signal/b/c$a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/b/b;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/signal/b/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/b/c$a;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
