.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field e:Z


# direct methods
.method public constructor <init>(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->a:I

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->b:I

    .line 4
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->c:I

    .line 5
    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->a:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->c:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "\u5b66\u4e60\u4e2d"

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u505c\u6b62"

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "\u5b66\u4e60"

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
