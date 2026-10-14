.class public Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog__create_item:I

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->title:I

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->input:I

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->name:I

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->make_sure:I

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/a;

    move-object v0, p3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p5

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/Dialog;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_0

    const-string p1, "\u540d\u79f0\u4e0d\u80fd\u7a7a"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    const/16 v0, 0xa

    if-ge p6, v0, :cond_1

    const-string p1, "\u63cf\u8ff0\u4e0d\u80fd\u5c11\u4e8e10\u4e2a\u5b57"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance p6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-direct {p6}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;-><init>()V

    .line 8
    iput-object p3, p6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->examSiteId:Ljava/lang/String;

    .line 9
    iput-object p1, p6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->desc:Ljava/lang/String;

    .line 10
    iput-object p2, p6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->name:Ljava/lang/String;

    .line 11
    iput-object p3, p6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->examSiteId:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p6, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    .line 13
    invoke-interface {p4, p6}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p5}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/c;->b(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
