.class Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/unityres/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/w0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/w0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;->d()V

    return-void
.end method
