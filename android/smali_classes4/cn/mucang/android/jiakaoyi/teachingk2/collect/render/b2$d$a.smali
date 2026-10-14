.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;->e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$d;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
