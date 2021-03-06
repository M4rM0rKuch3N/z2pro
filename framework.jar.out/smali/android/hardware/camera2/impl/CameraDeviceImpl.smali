.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$1;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$2;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$3;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$4;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$5;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$6;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$7;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    }
.end annotation


# static fields
.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

.field private mIdle:Z

.field private mInError:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mIsPrivilegedApp:Z

.field private mNextSessionId:I

.field private mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private mRepeatingRequestId:I

.field private final mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final mTotalPartialCount:I


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return v0
.end method

.method static synthetic -get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object v0
.end method

.method static synthetic -get13(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic -get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    return-object v0
.end method

.method static synthetic -get9(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return p1
.end method

.method static synthetic -set1(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    return p1
.end method

.method static synthetic -set2(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)I
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/16 v8, 0x17

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 239
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 72
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 80
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 81
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 87
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 89
    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 93
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 92
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 95
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 98
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 100
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 99
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 117
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    .line 120
    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 122
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 127
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 143
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 158
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 173
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 188
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 208
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 223
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 241
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Null argument given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 244
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 246
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 247
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 249
    const/16 v0, 0x17

    .line 250
    .local v0, "MAX_TAG_LEN":I
    const-string/jumbo v3, "CameraDevice-JV-%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_2

    .line 252
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_2
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 258
    .local v1, "partialCount":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 260
    iput v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 264
    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkPrivilegedAppList()Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 240
    return-void

    .line 262
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_0
.end method

.method private checkAndFireSequenceComplete()V
    .locals 21

    .prologue
    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 1613
    .local v2, "completedFrameNumber":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 1614
    .local v4, "completedReprocessFrameNumber":J
    const/4 v8, 0x0

    .line 1615
    .local v8, "isReprocess":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1616
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1617
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    .line 1618
    .local v15, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    const/16 v17, 0x0

    .line 1619
    .local v17, "sequenceCompleted":Z
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v14

    .line 1621
    .local v14, "requestId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1622
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v20, "Camera closed while checking sequences"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v19

    .line 1624
    return-void

    .line 1627
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 1628
    .local v7, "index":I
    if-ltz v7, :cond_5

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 1630
    :goto_1
    if-eqz v6, :cond_2

    .line 1632
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v10

    .line 1634
    .local v10, "lastRegularFrameNumber":J
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v12

    .line 1637
    .local v12, "lastReprocessFrameNumber":J
    cmp-long v18, v10, v2

    if-gtz v18, :cond_2

    .line 1638
    cmp-long v18, v12, v4

    if-gtz v18, :cond_2

    .line 1639
    const/16 v17, 0x1

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v10    # "lastRegularFrameNumber":J
    .end local v12    # "lastReprocessFrameNumber":J
    :cond_2
    monitor-exit v19

    .line 1654
    if-eqz v6, :cond_3

    if-eqz v17, :cond_4

    .line 1655
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1659
    :cond_4
    if-eqz v17, :cond_0

    .line 1660
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v6, v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V

    .line 1677
    .local v16, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1629
    .end local v16    # "resultDispatch":Ljava/lang/Runnable;
    :cond_5
    const/4 v6, 0x0

    .local v6, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    goto :goto_1

    .line 1621
    .end local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v7    # "index":I
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 1611
    .end local v14    # "requestId":I
    .end local v15    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .end local v17    # "sequenceCompleted":Z
    :cond_6
    return-void
.end method

.method private checkEarlyTriggerSequenceComplete(IJ)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 822
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    .line 824
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 825
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object v0, v3

    .line 826
    .local v0, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_0
    if-eqz v0, :cond_1

    .line 827
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 836
    :cond_1
    if-eqz v0, :cond_2

    .line 842
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v2, p0, p1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    .line 857
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v1    # "index":I
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 859
    .restart local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .restart local v1    # "index":I
    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 860
    const-string/jumbo v4, "did not register callback to request %d"

    .line 859
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 859
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v1    # "index":I
    :cond_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    invoke-direct {v4, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(IJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    goto :goto_0
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2031
    if-nez p0, :cond_1

    .line 2032
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2033
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 2034
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2035
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 2034
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2037
    :cond_0
    new-instance p0, Landroid/os/Handler;

    .end local p0    # "handler":Landroid/os/Handler;
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2039
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p0    # "handler":Landroid/os/Handler;
    :cond_1
    return-object p0
.end method

.method static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .prologue
    .line 2048
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 2049
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 2051
    :cond_0
    return-object p0
.end method

.method private checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 2055
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_0

    .line 2056
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_1

    .line 2059
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    .line 2060
    const-string/jumbo v1, "The camera device has encountered a serious error"

    .line 2059
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2054
    :cond_1
    return-void
.end method

.method private checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 11
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    const/4 v7, 0x0

    .line 1069
    if-eqz p1, :cond_6

    .line 1070
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1071
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1070
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1077
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrivilegedApp()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1078
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "ignore input format/size check for white listed app"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void

    .line 1082
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v2

    .line 1083
    .local v2, "inputFormats":[I
    const/4 v5, 0x0

    .line 1084
    .local v5, "validFormat":Z
    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget v1, v2, v8

    .line 1085
    .local v1, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v10

    if-ne v1, v10, :cond_1

    .line 1086
    const/4 v5, 0x1

    .line 1084
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1090
    .end local v1    # "format":I
    :cond_2
    if-nez v5, :cond_3

    .line 1091
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "input format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1092
    const-string/jumbo v9, " is not valid"

    .line 1091
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1095
    :cond_3
    const/4 v6, 0x0

    .line 1096
    .local v6, "validSize":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 1097
    .local v3, "inputSizes":[Landroid/util/Size;
    array-length v8, v3

    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v4, v3, v7

    .line 1098
    .local v4, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 1099
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 1100
    const/4 v6, 0x1

    .line 1097
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1104
    .end local v4    # "s":Landroid/util/Size;
    :cond_5
    if-nez v6, :cond_6

    .line 1105
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "input size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1106
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    .line 1105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1106
    const-string/jumbo v9, " is not valid"

    .line 1105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1068
    .end local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v2    # "inputFormats":[I
    .end local v3    # "inputSizes":[Landroid/util/Size;
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    :cond_6
    return-void
.end method

.method private checkPrivilegedAppList()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1048
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "persist.camera.cfa.packagelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "packageList":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1052
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1053
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1054
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1055
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1056
    const/4 v5, 0x1

    return v5

    .line 1061
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_1
    return v6
.end method

.method private createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V
    .locals 26
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 592
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 597
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 599
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 600
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :catchall_0
    move-exception v5

    monitor-exit v25

    throw v5

    .line 606
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v5, :cond_1

    .line 607
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :cond_1
    const/4 v11, 0x1

    .line 612
    .local v11, "configureSuccess":Z
    const/16 v24, 0x0

    .line 613
    .local v24, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    .line 616
    .local v14, "input":Landroid/view/Surface;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    move-result v11

    .line 618
    .local v11, "configureSuccess":Z
    if-eqz v11, :cond_2

    if-eqz p1, :cond_2

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 630
    .end local v11    # "configureSuccess":Z
    .end local v14    # "input":Landroid/view/Surface;
    .end local v24    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    :goto_0
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 631
    .local v6, "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 632
    .local v21, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 621
    .end local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v21    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v22    # "config$iterator":Ljava/util/Iterator;
    .restart local v14    # "input":Landroid/view/Surface;
    .restart local v24    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catch_0
    move-exception v23

    .line 622
    .local v23, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v11, 0x0

    .line 623
    .local v11, "configureSuccess":Z
    move-object/from16 v24, v23

    .line 624
    .local v24, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    goto :goto_0

    .line 635
    .end local v11    # "configureSuccess":Z
    .end local v14    # "input":Landroid/view/Surface;
    .end local v23    # "e":Landroid/hardware/camera2/CameraAccessException;
    .end local v24    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .restart local v22    # "config$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    .line 636
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz p5, :cond_4

    .line 637
    new-instance v4, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 638
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 639
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p0

    .line 637
    invoke-direct/range {v4 .. v12}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    .line 647
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 649
    if-eqz v24, :cond_5

    .line 650
    throw v24

    .line 641
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_4
    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object v12, v4

    move-object v15, v6

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p0

    move/from16 v20, v11

    .line 641
    invoke-direct/range {v12 .. v20}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_2

    .line 653
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v25

    .line 591
    return-void
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I
    .locals 17
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    .line 883
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "request$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest;

    .line 884
    .local v8, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 886
    const-string/jumbo v3, "Each request must have at least one Surface target"

    .line 885
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    :cond_1
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "surface$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    .line 890
    .local v12, "surface":Landroid/view/Surface;
    if-nez v12, :cond_2

    .line 891
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Null Surface targets are not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    .end local v8    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v12    # "surface":Landroid/view/Surface;
    .end local v13    # "surface$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v14

    .line 897
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 898
    if-eqz p4, :cond_4

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 904
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/CaptureRequest;

    .line 905
    .local v10, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v11

    .line 910
    .local v11, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    if-eqz p2, :cond_5

    .line 911
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v16

    .line 912
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 913
    move-object/from16 v0, p0

    iget v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v7, v3, -0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    .line 912
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V

    .line 911
    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    :cond_5
    if-eqz p4, :cond_8

    .line 921
    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 922
    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 923
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v4

    .line 922
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .line 925
    :cond_6
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 931
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_7

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 934
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 936
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v14

    return v2

    .line 927
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 928
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    .line 927
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 896
    .end local v10    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .end local v11    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2
.end method

.method private waitUntilIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 982
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 985
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 986
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Active repeating request ongoing"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 989
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 980
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 2080
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CameraDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " died unexpectedly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_0

    .line 2083
    return-void

    .line 2086
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2087
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2096
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2079
    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1016
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1017
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1018
    return-void

    .line 1021
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    .line 1023
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1029
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_3

    .line 1030
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1033
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1015
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public configureOutputs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v0, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 362
    .local v1, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v1    # "s":Landroid/view/Surface;
    :cond_0
    const/4 v3, 0x0

    .line 365
    const/4 v4, 0x0

    .line 364
    invoke-virtual {p0, v3, v0, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    .line 358
    return-void
.end method

.method public configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z
    .locals 20
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 392
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p2, :cond_0

    .line 393
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    if-eqz p1, :cond_1

    .line 396
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "cannot configure an input stream without any output streams"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 400
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 402
    const/4 v14, 0x0

    .line 404
    .local v14, "success":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 405
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 407
    new-instance v3, Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 409
    .local v3, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v5, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 414
    .local v11, "streamId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 416
    .local v9, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v9}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 420
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 404
    .end local v3    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v5    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v9    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v11    # "streamId":I
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 426
    .restart local v3    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v5    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "i":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 432
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    .line 435
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v15}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/InputConfiguration;

    .line 436
    .local v4, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    move-object/from16 v0, p1

    if-eq v0, v4, :cond_5

    .line 437
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 452
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "streamId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 453
    .local v12, "streamId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 468
    .end local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v12    # "streamId":Ljava/lang/Integer;
    .end local v13    # "streamId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 471
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Stream configuration failed due to: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    if-eqz v14, :cond_d

    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_d

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    :goto_4
    const/4 v15, 0x0

    monitor-exit v16

    return v15

    .line 438
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_6
    if-eqz v4, :cond_7

    .line 439
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v15}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 440
    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    .line 441
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    .line 440
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 443
    :cond_7
    if-eqz p1, :cond_5

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v17

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v19

    .line 444
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(III)I

    move-result v11

    .line 446
    .restart local v11    # "streamId":I
    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    .line 447
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 446
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 473
    .end local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v11    # "streamId":I
    :catch_1
    move-exception v6

    .line 474
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_6
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v15

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 475
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "The camera is currently busy. You must wait until the previous operation completes."

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 479
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_1
    move-exception v15

    .line 480
    if-eqz v14, :cond_e

    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_e

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :goto_5
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 458
    .restart local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v13    # "streamId$iterator":Ljava/util/Iterator;
    :cond_8
    :try_start_8
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "outConfig$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 459
    .restart local v9    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v15, v9}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v11

    .line 461
    .restart local v11    # "streamId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 465
    .end local v9    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v11    # "streamId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(Z)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 467
    const/4 v14, 0x1

    .line 480
    if-eqz v14, :cond_b

    :try_start_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_b

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    monitor-exit v16

    .line 489
    return v14

    .line 484
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 478
    .end local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v10    # "outConfig$iterator":Ljava/util/Iterator;
    .end local v13    # "streamId$iterator":Ljava/util/Iterator;
    .restart local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_c
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 484
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 670
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 672
    const/4 v1, 0x0

    .line 674
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    .line 676
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 677
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 676
    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v3

    .line 679
    return-object v0

    .line 669
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 498
    .local v6, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v1, 0x0

    .line 501
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 500
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    .line 495
    return-void
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    .local v2, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    .line 517
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 516
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    .line 508
    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v1, 0x0

    .line 572
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 574
    const-string/jumbo v1, "Output surface list must not be null and the size must be no more than 2"

    .line 573
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    .line 577
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 578
    .local v6, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1, v1, v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .line 582
    .local v7, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v7    # "surface":Landroid/view/Surface;
    :cond_2
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 584
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    .line 571
    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 687
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 689
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 690
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    .line 689
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 692
    .local v0, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 693
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v3

    .line 692
    const/4 v4, 0x1

    invoke-direct {v1, v0, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 686
    .end local v0    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 534
    .local v6, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 536
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    .line 523
    return-void
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 549
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    if-nez p2, :cond_1

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v2, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "output$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 562
    .local v6, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    .end local v6    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 564
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    .line 544
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1040
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    .line 1038
    return-void

    .line 1042
    :catchall_0
    move-exception v0

    .line 1043
    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    .line 1042
    throw v0
.end method

.method public finishDeferredConfig(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "deferredConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 759
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "deferred config is null or empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 762
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 763
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 764
    .local v0, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v3, -0x1

    .line 765
    .local v3, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 768
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 769
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 773
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 774
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Deferred config is not part of this session"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    .end local v0    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "streamId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 765
    .restart local v0    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v1    # "config$iterator":Ljava/util/Iterator;
    .restart local v2    # "i":I
    .restart local v3    # "streamId":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 778
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-nez v4, :cond_5

    .line 779
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The deferred config for stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 780
    const-string/jumbo v7, " must have a non-null surface"

    .line 779
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 782
    :cond_5
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v3, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setDeferredConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "i":I
    .end local v3    # "streamId":I
    :cond_6
    monitor-exit v5

    .line 757
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 994
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 995
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 997
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1001
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1003
    return-void

    .line 1006
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v0

    .line 1007
    .local v0, "lastFrameNumber":J
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v2, v5, :cond_1

    .line 1008
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .line 1009
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 993
    return-void

    .line 994
    .end local v0    # "lastFrameNumber":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public isPrivilegedApp()Z
    .locals 1

    .prologue
    .line 1065
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    return v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 5
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 717
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_0
    if-gtz p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid maxCount given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 721
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 722
    const/4 v1, -0x1

    .line 723
    .local v1, "streamId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 724
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p2, v2, :cond_3

    .line 725
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 729
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 730
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Surface is not part of this session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 723
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 716
    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 698
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 700
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 701
    const/4 v1, -0x1

    .line 702
    .local v1, "streamId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 703
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 704
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 708
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 709
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Surface is not part of this session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 702
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 697
    return-void
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 6
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    return-void

    .line 284
    :cond_0
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 286
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 289
    .local v1, "remoteDeviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 291
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 278
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    .line 296
    const-string/jumbo v4, "The camera device has encountered a serious error"

    .line 295
    const/4 v5, 0x2

    invoke-direct {v2, v5, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "remoteDeviceBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .locals 7
    .param p1, "failure"    # Landroid/os/ServiceSpecificException;

    .prologue
    .line 312
    const/4 v1, 0x4

    .line 313
    .local v1, "failureCode":I
    const/4 v2, 0x1

    .line 315
    .local v2, "failureIsError":Z
    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v4, :pswitch_data_0

    .line 332
    :pswitch_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected failure in opening camera device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 333
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    move v0, v1

    .line 337
    .local v0, "code":I
    move v3, v2

    .line 338
    .local v3, "isError":Z
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 339
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 340
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 311
    return-void

    .line 317
    .end local v0    # "code":I
    .end local v3    # "isError":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 318
    goto :goto_0

    .line 320
    :pswitch_2
    const/4 v1, 0x2

    .line 321
    goto :goto_0

    .line 323
    :pswitch_3
    const/4 v1, 0x3

    .line 324
    goto :goto_0

    .line 326
    :pswitch_4
    const/4 v2, 0x0

    .line 327
    goto :goto_0

    .line 329
    :pswitch_5
    const/4 v1, 0x4

    .line 330
    goto :goto_0

    .line 338
    .restart local v0    # "code":I
    .restart local v3    # "isError":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 949
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .locals 2
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .prologue
    .line 661
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 660
    return-void

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public stopRepeating()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 957
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 958
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 959
    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v4, v6, :cond_0

    .line 961
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 962
    .local v1, "requestId":I
    const/4 v4, -0x1

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 975
    .local v2, "lastFrameNumber":J
    :try_start_2
    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "requestId":I
    .end local v2    # "lastFrameNumber":J
    :cond_0
    monitor-exit v5

    .line 955
    return-void

    .line 967
    .restart local v1    # "requestId":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    monitor-exit v5

    .line 972
    return-void

    .line 957
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 738
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 741
    const/4 v1, -0x1

    .line 742
    .local v1, "streamId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 743
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 744
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 748
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 749
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Surface is not part of this session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 742
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 737
    return-void
.end method
