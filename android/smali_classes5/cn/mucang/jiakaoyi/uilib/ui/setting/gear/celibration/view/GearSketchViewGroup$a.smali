.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;->e(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$setGearsDate$2$gearItemView$1$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;",
        "onModified",
        "",
        "item",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
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
.field final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;


# direct methods
.method constructor <init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$a;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->a(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$a;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$a;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;->getModifyCallback()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/j;->a(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V

    :goto_0
    return-void
.end method
