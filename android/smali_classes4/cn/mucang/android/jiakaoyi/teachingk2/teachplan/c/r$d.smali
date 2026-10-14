.class final Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->e(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->d:J

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;->b:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->d:J

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
