.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->s(IIFLcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;->a:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
