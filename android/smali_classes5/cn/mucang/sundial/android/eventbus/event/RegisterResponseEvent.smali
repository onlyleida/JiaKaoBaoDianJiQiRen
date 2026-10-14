.class public Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;->success:Z

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;->success:Z

    return v0
.end method
