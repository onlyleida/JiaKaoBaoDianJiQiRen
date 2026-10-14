.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__preview_car_dialog:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->car_view:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 5
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->R(I)V

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    invoke-direct {v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;

    invoke-direct {v2, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/c;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    return-void
.end method
