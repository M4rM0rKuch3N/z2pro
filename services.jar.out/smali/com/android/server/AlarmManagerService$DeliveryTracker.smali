.class Lcom/android/server/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2854
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v1, p1, :cond_0

    .line 2855
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object v1

    .line 2853
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2858
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No in-flight alarm for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2859
    const/4 v1, 0x0

    return-object v1
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;
    .locals 4
    .param p1, "listener"    # Landroid/os/IBinder;

    .prologue
    .line 2863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2864
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 2865
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object v1

    .line 2863
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2868
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No in-flight alarm for listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2869
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .locals 11
    .param p1, "inflight"    # Lcom/android/server/AlarmManagerService$InFlight;

    .prologue
    const/4 v10, 0x0

    .line 2873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2874
    .local v2, "nowELAPSED":J
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2875
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2876
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v5, :cond_0

    .line 2877
    iput v10, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2878
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v8, v2, v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 2880
    :cond_0
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2881
    .local v1, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2882
    iget v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v5, :cond_1

    .line 2883
    iput v10, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2884
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long v8, v2, v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 2887
    :cond_1
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2888
    const/4 v4, 0x0

    .local v4, "wi":I
    :goto_0
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2890
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v4}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 2889
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2888
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2894
    .end local v4    # "wi":I
    :cond_2
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget v6, p1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 2893
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2872
    :cond_3
    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .locals 9
    .param p1, "inflight"    # Lcom/android/server/AlarmManagerService$InFlight;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2900
    if-eqz p1, :cond_0

    .line 2901
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 2902
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Lcom/android/server/QCNsrmAlarmExtension;

    move-result-object v0

    iget v1, p1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/QCNsrmAlarmExtension;->removeTriggeredUid(I)V

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2906
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_4

    .line 2907
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2908
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2909
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2911
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2912
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished all dispatches with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2913
    const-string/jumbo v2, " remaining inflights"

    .line 2912
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2914
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 2915
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Remaining #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2914
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2917
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2899
    .end local v7    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 2921
    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2922
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2923
    .local v8, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v8, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 2924
    iget v3, v8, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 2923
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V

    goto :goto_1

    .line 2927
    .end local v8    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string/jumbo v1, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2928
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_1
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "who"    # Landroid/os/IBinder;

    .prologue
    .line 2938
    if-nez p1, :cond_0

    .line 2939
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid alarmComplete: uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2940
    const-string/jumbo v5, " pid="

    .line 2939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2940
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    return-void

    .line 2944
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2946
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2947
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2948
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v2

    .line 2949
    .local v2, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    if-eqz v2, :cond_1

    .line 2953
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2963
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    return-void

    .line 2946
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2962
    :catchall_1
    move-exception v3

    .line 2963
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2962
    throw v3
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "who"    # Landroid/os/IBinder;

    .prologue
    .line 2982
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2983
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v0

    .line 2984
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    if-eqz v0, :cond_0

    .line 2989
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2981
    return-void

    .line 2982
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 22
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowELAPSED"    # J
    .param p4, "allowWhileIdle"    # Z

    .prologue
    .line 3002
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_6

    .line 3005
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3006
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->-get0(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v6

    .line 3007
    const-string/jumbo v7, "android.intent.extra.ALARM_COUNT"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3006
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 3008
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v6, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v6, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3009
    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v11, v6, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 3005
    :goto_0
    const/4 v6, 0x0

    .line 3008
    const/4 v10, 0x0

    .line 3005
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v4, :cond_1

    .line 3049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3050
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v9, :cond_7

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 3051
    :goto_2
    const/4 v10, 0x1

    .line 3049
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V

    .line 3052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3055
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v4, v7, v6}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 3057
    :cond_1
    new-instance v5, Lcom/android/server/AlarmManagerService$InFlight;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    .line 3058
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 3059
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    move-wide/from16 v14, p2

    .line 3057
    invoke-direct/range {v5 .. v15}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;J)V

    .line 3060
    .local v5, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v6, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Lcom/android/server/QCNsrmAlarmExtension;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_8

    .line 3063
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    .line 3062
    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/server/QCNsrmAlarmExtension;->addTriggeredUid(I)V

    .line 3066
    if-eqz p4, :cond_2

    .line 3068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-wide/from16 v0, p2

    invoke-virtual {v4, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 3080
    :cond_2
    iget-object v0, v5, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-object/from16 v16, v0

    .line 3081
    .local v16, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3082
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v4, :cond_9

    .line 3083
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3084
    move-wide/from16 v0, p2

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3088
    :goto_4
    iget-object v0, v5, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v19, v0

    .line 3089
    .local v19, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3090
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v4, :cond_a

    .line 3091
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3092
    move-wide/from16 v0, p2

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3096
    :goto_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    .line 3097
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v4, :cond_d

    .line 3098
    :cond_3
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3099
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 3100
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 3101
    const/16 v20, 0x0

    .local v20, "wi":I
    :goto_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_d

    .line 3102
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v21

    .line 3104
    .local v21, "wsName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 3105
    if-eqz v21, :cond_b

    .line 3106
    .end local v21    # "wsName":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 3103
    move-object/from16 v0, v21

    invoke-static {v4, v6, v0, v7}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 3101
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 3009
    .end local v5    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v20    # "wi":I
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3010
    :catch_0
    move-exception v17

    .line 3011
    .local v17, "e":Landroid/app/PendingIntent$CanceledException;
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_5

    .line 3014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 3020
    :cond_5
    return-void

    .line 3029
    .end local v17    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    .line 3030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3031
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3032
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 3031
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 3033
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 3030
    invoke-virtual {v4, v6, v8, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3034
    :catch_1
    move-exception v18

    .line 3043
    .local v18, "e":Ljava/lang/Exception;
    return-void

    .line 3050
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v9, -0x1

    goto/16 :goto_2

    .line 3064
    .restart local v5    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_8
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    goto/16 :goto_3

    .line 3086
    .restart local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_9
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    goto/16 :goto_4

    .line 3094
    .restart local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_a
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    goto/16 :goto_5

    .line 3105
    .restart local v20    # "wi":I
    .restart local v21    # "wsName":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_7

    .line 3110
    .end local v20    # "wi":I
    .end local v21    # "wsName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 3109
    invoke-static {v4, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 3001
    :cond_d
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2974
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2972
    return-void

    .line 2973
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
