"use strict";
/*
GH Actions Node actions don't support modules
import {env} from "process";
import {execSync} from "child_process";
import {join} from "path";
*/

const join = require("path").join;
const execSync = require("child_process").execSync;
const env = require("process").env;

const runCommand = "bash " + join(__dirname, "action.sh");
console.log("starting", runCommand );
console.log(execSync(runCommand, {"stdio":"inherit"}));

console.log("bash finished");



