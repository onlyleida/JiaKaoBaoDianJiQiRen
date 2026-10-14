.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->b:I

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->c:I

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->d:I

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->b:I

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->c:I

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->d:I

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->K(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V

    return-void
.end method
