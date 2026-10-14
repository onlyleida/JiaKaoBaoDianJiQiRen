.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;->b:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;->b:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->r(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V

    return-void
.end method
