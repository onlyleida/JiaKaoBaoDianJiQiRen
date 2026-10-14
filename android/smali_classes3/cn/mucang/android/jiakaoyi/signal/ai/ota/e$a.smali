.class Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/signal/ai/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/ai/g;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ai\u4e0b\u53d1\u5347\u7ea7\u54cd\u5e94:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->a(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AI\u5f00\u59cb\u5347\u7ea7"

    invoke-static {p1, v1, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;IZZLjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->d(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;Z)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/g;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$a;->a(Lcn/mucang/android/jiakaoyi/signal/ai/g;)V

    return-void
.end method
