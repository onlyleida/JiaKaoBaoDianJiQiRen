.class public final synthetic Lcn/mucang/sundial/android/tcp/data/gnss/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/a;->a:Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    return-void
.end method


# virtual methods
.method public final onResult(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/a;->a:Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->b(Lcn/mucang/sundial/android/model/CarModel;)V

    return-void
.end method
