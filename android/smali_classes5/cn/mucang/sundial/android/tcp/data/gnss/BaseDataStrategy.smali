.class public abstract Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/data/gnss/DataStrategy;


# static fields
.field protected static final TAG:Ljava/lang/String; = "DataStrategy"


# instance fields
.field private context:Landroid/content/Context;

.field protected dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDataCallBack(Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;->dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    return-void
.end method
