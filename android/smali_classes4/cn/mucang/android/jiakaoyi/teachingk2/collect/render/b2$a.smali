.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->b(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6559\u5b66\u70b9\u5220\u9664\u540e\u4e0d\u53ef\u6062\u590d\uff0c\u786e\u5b9a\u8981\u5220\u9664\u5417?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    const-string p1, "\u5220\u9664"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method
