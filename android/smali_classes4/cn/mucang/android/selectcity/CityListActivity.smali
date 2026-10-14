.class public Lcn/mucang/android/selectcity/CityListActivity;
.super Lf/a/a/e/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "\u57ce\u5e02\u5217\u8868"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/a/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const-class p1, Lcn/mucang/android/selectcity/b0/a;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/b0/a;

    iput-object p1, p0, Lf/a/a/e/a/a/a;->fragment:Lf/a/a/e/a/c/b;

    .line 5
    invoke-virtual {p0, p1}, Lf/a/a/e/a/a/a;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
