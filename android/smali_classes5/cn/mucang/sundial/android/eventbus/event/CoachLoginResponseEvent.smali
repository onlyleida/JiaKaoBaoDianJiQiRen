.class public Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extraMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;->extraMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;->extraMessage:Ljava/lang/String;

    return-object v0
.end method
