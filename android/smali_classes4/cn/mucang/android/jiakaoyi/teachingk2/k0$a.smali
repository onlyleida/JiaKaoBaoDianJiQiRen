.class public final Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/k0;-><init>(Ljava/lang/String;ILkotlin/jvm/b/l;ZLjava/lang/Integer;Lkotlin/jvm/b/l;Ljava/lang/Integer;Lkotlin/jvm/b/l;Landroid/widget/PopupWindow$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/CountdownPop$countdownRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

.field final synthetic b:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/k0;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->b:Ljava/lang/Integer;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->d()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->k(I)V

    if-lez v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/k0;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutPopCountdownBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutPopCountdownBinding;->tvLeft:Landroid/widget/TextView;

    const-string v3, "popBinding.tvLeft"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/k0;Landroid/widget/TextView;Ljava/lang/Integer;I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/k0;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutPopCountdownBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutPopCountdownBinding;->tvRight:Landroid/widget/TextView;

    const-string v3, "popBinding.tvRight"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->b:Ljava/lang/Integer;

    invoke-static {v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/k0;Landroid/widget/TextView;Ljava/lang/Integer;I)V

    const-wide/16 v2, 0x3e8

    .line 4
    invoke-static {p0, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->dismiss()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->f()Lkotlin/jvm/b/l;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
