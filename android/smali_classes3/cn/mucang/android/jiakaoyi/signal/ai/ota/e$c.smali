.class Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;
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
        "Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ai\u8fde\u63a5\u4e0a\u4e86:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->c(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;->a:Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;

    const/16 v0, 0xaa

    const/4 v1, 0x1

    const-string v2, "AI\u66f4\u65b0\u6210\u529f"

    invoke-static {p1, v0, v1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;->b(Lcn/mucang/android/jiakaoyi/signal/ai/ota/e;IZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/e$c;->a(Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;)V

    return-void
.end method
