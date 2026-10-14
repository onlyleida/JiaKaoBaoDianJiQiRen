.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->p(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
