.class final Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_choose_result"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity$init$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderPositionSelectActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
