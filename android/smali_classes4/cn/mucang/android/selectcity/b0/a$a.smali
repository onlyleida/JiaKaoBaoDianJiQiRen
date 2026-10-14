.class Lcn/mucang/android/selectcity/b0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/selectcity/b0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/selectcity/b0/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/selectcity/b0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/b0/a$a;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a$a;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-static {v0}, Lcn/mucang/android/selectcity/b0/a;->w(Lcn/mucang/android/selectcity/b0/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/selectcity/b0/a$a;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-static {v2}, Lcn/mucang/android/selectcity/b0/a;->x(Lcn/mucang/android/selectcity/b0/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a$a;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-static {v0}, Lcn/mucang/android/selectcity/b0/a;->y(Lcn/mucang/android/selectcity/b0/a;)Lcn/mucang/android/selectcity/z/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lf/a/a/e/a/b/b;->a(Ljava/util/List;)V

    return-void
.end method
