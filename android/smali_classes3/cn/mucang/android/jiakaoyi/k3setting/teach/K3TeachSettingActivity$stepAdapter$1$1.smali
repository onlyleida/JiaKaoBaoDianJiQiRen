.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/y;",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/TeachStepItem;",
        "index",
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/y;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;->invoke(Lcn/mucang/android/jiakaoyi/k3setting/teach/y;I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/k3setting/teach/y;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/y;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V

    return-void
.end method
