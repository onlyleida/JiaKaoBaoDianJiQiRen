.class final Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->k()V
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
        "position",
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;

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

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2$1;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;I)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->z(Lkotlin/jvm/b/l;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "supportFragmentManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u63d2\u5165\u706f\u5149\u6307\u4ee4"

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
