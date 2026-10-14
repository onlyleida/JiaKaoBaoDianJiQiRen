.class final Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1$1;->invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->r()Lkotlin/jvm/b/l;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->dismiss()V

    return-void
.end method
