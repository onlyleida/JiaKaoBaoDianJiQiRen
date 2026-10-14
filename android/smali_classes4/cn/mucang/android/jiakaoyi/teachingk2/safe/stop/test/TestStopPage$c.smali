.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$c;
.super Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$a;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    int-to-float p1, p2

    const p2, 0x3dcccccd    # 0.1f

    mul-float p1, p1, p2

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->r:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor3V:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
