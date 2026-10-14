.class public Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog__link_site:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->qrCode:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, p2, v1}, Lf/a/a/b/a/a;->i(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->make_sure:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/b;

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/b;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
