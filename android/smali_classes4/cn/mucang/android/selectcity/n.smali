.class public final synthetic Lcn/mucang/android/selectcity/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/selectcity/y;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcn/mucang/android/selectcity/Area;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/selectcity/y;Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/n;->a:Lcn/mucang/android/selectcity/y;

    iput-object p2, p0, Lcn/mucang/android/selectcity/n;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/selectcity/n;->c:Lcn/mucang/android/selectcity/Area;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/selectcity/n;->a:Lcn/mucang/android/selectcity/y;

    iget-object v1, p0, Lcn/mucang/android/selectcity/n;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/selectcity/n;->c:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/selectcity/y;->r0(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method
