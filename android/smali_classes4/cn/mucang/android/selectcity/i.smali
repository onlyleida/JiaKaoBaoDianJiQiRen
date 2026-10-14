.class public final synthetic Lcn/mucang/android/selectcity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/selectcity/y;

.field public final synthetic b:Lcn/mucang/android/core/location/c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/selectcity/y;Lcn/mucang/android/core/location/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/i;->a:Lcn/mucang/android/selectcity/y;

    iput-object p2, p0, Lcn/mucang/android/selectcity/i;->b:Lcn/mucang/android/core/location/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/selectcity/i;->a:Lcn/mucang/android/selectcity/y;

    iget-object v1, p0, Lcn/mucang/android/selectcity/i;->b:Lcn/mucang/android/core/location/c;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/selectcity/y;->z0(Lcn/mucang/android/core/location/c;Landroid/content/DialogInterface;I)V

    return-void
.end method
