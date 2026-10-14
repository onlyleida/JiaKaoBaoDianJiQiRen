.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult$1",
        "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;",
        "onResult",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e32\u53e3\u8bfb\u53d6\u7684\u56fa\u4ef6\u4fe1\u606f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", \u8bbe\u7f6e\u7684\u8f66\u578b:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V

    return-void
.end method
