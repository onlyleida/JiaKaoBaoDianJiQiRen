.class public final synthetic Lcn/mucang/android/selectcity/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/selectcity/SelectRegionByCityActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/selectcity/SelectRegionByCityActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/s;->a:Lcn/mucang/android/selectcity/SelectRegionByCityActivity;

    iput-object p2, p0, Lcn/mucang/android/selectcity/s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/selectcity/s;->a:Lcn/mucang/android/selectcity/SelectRegionByCityActivity;

    iget-object v1, p0, Lcn/mucang/android/selectcity/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->i(Ljava/lang/String;)V

    return-void
.end method
