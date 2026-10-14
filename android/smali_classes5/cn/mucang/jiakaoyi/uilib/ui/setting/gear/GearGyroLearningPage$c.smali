.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field f:Z


# direct methods
.method public constructor <init>(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->a:I

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->b:I

    .line 4
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->c:I

    .line 5
    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->d:I

    .line 6
    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->a:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5b66\u4e60\u4e2d"

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u5b66\u4e60"

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
