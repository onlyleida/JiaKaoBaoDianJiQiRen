.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->leftPoints:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;Z)Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->e:Z

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    const-string p2, "\u5f00\u59cb\u91c7\u96c61\u53f7\u7ebf"

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;Ljava/lang/String;)V

    return-void
.end method
