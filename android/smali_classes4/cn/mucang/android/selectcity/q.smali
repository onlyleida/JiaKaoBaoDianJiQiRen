.class public final synthetic Lcn/mucang/android/selectcity/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/n/c/a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/selectcity/y;

.field public final synthetic b:Lf/a/a/a/n/c/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/selectcity/y;Lf/a/a/a/n/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/q;->a:Lcn/mucang/android/selectcity/y;

    iput-object p2, p0, Lcn/mucang/android/selectcity/q;->b:Lf/a/a/a/n/c/a;

    return-void
.end method


# virtual methods
.method public final permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/selectcity/q;->a:Lcn/mucang/android/selectcity/y;

    iget-object v1, p0, Lcn/mucang/android/selectcity/q;->b:Lf/a/a/a/n/c/a;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/selectcity/y;->p0(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method
