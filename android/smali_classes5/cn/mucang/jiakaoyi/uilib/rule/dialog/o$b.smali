.class public final Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductsDialog$onViewCreated$deductAdapter$1",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "uilib_release"
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
.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;)V
    .locals 6

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;->c:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/n;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "childFragmentManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/n;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    const-class p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-virtual {p0, p1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void
.end method
